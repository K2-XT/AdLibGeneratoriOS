//
//  CucumberishObjectiveCFile.m
//  AdLibUITests
//
//  Created by Payton Pehrson on 2/6/23.
//  Copyright © 2023 Payton Pehrson. All rights reserved.
//

#import <Foundation/Foundation.h>
//Replace CucumberishExampleUITests with the name of your swift test target
#import "AdLibUITests-Swift.h"

__attribute__((constructor))
void CucumberishInit()
{
    [CucumberishInitializer setupCucumberish];
}
