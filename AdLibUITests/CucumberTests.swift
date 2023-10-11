//
//  CucumberTests.swift
//  AdLibUITests
//
//  Created by Payton Pehrson on 10/11/23.
//  Copyright © 2023 Payton Pehrson. All rights reserved.
//

import Foundation
import XCTest
import CucumberSwift

extension Cucumber: StepImplementation {
    public var bundle: Bundle {
        class TestExplorer: CucumberTest { } // !! Make sure to inherit from CucumberTest
        return Bundle(for: TestExplorer.self) // !! Important, this is what allows Cucumber Tests to be discovered.
    }

    public func setupSteps() {
        Given("the user launches the app") { _, _ in
            XCUIApplication().launch()
        }
        And("they enter \"([^\\\"]*)\" into the \"([^\\\"]*)\" field") { matches, _ in
            let inputText = (matches[0])
            let inputFieldID = (matches[1])
            let inputField = XCUIApplication().textFields[inputFieldID]
            XCTAssert(inputField.waitForExistence(timeout: 10))
            inputField.tap()
            inputField.clearAndEnterText(text: inputText)
        }
        When("they tap the text \"([^\\\"]*)\"") { args, _ in
            let textToBeTapped = (args[0])
            XCUIApplication().staticTexts[textToBeTapped].tap()
        }
        Then("the user should see the generator screen") { _, _ in
            Cucumber.waitForElementToAppear(XCUIApplication().otherElements["GeneratorScreen"])
        }
        Then("they should see the text \"([^\\\"]*)\" in the textview \"([^\\\"]*)\"") { args, _ in
            let expectedText = (args[0])
            let textViewID = (args[1])
            let textView = XCUIApplication().textViews[textViewID]
            XCTAssertTrue(textView.value as? String == expectedText)
        }
        Then("they should see the AdLib screen") { _, _ in
            Cucumber.waitForElementToAppear(XCUIApplication().otherElements["AdLibScreen"])
        }
    }
    
    class func waitForElementToAppear(_ element: XCUIElement){
        let result = element.waitForExistence(timeout: 5)
        guard result else {
            XCTFail("Element does not appear")
            return
        }
    }
}

extension XCUIElement { //Credit to Agost Biro https://stackoverflow.com/a/73847504/3596757
    /// Removes any current text in the field before typing in the new value and submitting
    /// Based on: https://stackoverflow.com/a/32894080
    func clear() {
        if self.value as? String == nil {
            XCTFail("Tried to clear and enter text into a non string value")
            return
        }

        // Repeatedly delete text as long as there is something in the text field.
        // This is required to clear text that does not fit in to the textfield and is partially hidden initally.
        // Important to check for placeholder value, otherwise it gets into an infinite loop.
        while let stringValue = self.value as? String, !stringValue.isEmpty, stringValue != self.placeholderValue {
            // Move the cursor to the end of the text field
            let lowerRightCorner = self.coordinate(withNormalizedOffset: CGVector(dx: 0.9, dy: 0.9))
            lowerRightCorner.tap()
            let delete = String(repeating: XCUIKeyboardKey.delete.rawValue, count: stringValue.count)
            self.typeText(delete)
        }
    }

    func clearAndEnterText(text: String) {
        self.clear()
        // new line at end submits
        self.typeText("\(text)\n")
    }
}
