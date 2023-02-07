Feature: A user can input to the text fields, press the generate button, and get an adlib

Scenario: A user should see the generator screen on launch
    Given the user launches the app
    Then the user should see the generator screen
    
Scenario: The generate button should open the adlib screen
    Given the user launches the app
    When they tap the text "GENERATE"
    Then they should see the AdLib screen
    
Scenario: A user should be able to generate an adlib
    Given the user launches the app
    And they enter "knife" into the "NounOneField" field
    And they enter "shoe" into the "NounTwoField" field
    And they enter "ran" into the "VerbOneField" field
    And they enter "threw" into the "VerbTwoField" field
    And they enter "tasteless" into the "AdjectiveField" field
    And they enter "monstrously" into the "AdverbField" field
    When they tap the text "GENERATE"
    Then they should see the text "One day, Tom the cat was sleeping when a mouse named Jerry saw him and decided to spoil his fun. With a mischevious grin and a wink toward an audience who appeared to be missing, Jerry quickly ran into his mouse-hole and grabbed his nicest knife before running back to Tom. Being careful not to wake Tom, Jerry ran up to the cat's tail and proceeded to smash down the knife with all of his strength! Tom yowled and jumped in the air! Jerry began to scurry as Tom seemingly floated in the air. Once Tom reached the ground, his hand swooped to the nearest object, a shoe, and he grabbed it with his might! He ran after Jerry, catching up with him, and grabbed Jerry in one hand, ready to bash him in the head! However, as Tom brought the tasteless shoe down, Jerry freed his arms, grabbed the shoe and began to monstrously threw Tom with the shoe. Surprised, Tom let go and Jerry tumbled to the floor. He quickly ran back into his hole, where Tom had no chance of catching him." in the textview "AdLibTextView"
