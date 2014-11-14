//
//  ImportSwiftClass2OBJC.m
//  DevQuestionsHow2QEUN
//
//  Created by JNYJ on 14-11-14.
//  Copyright (c) 2014年 JNYJ. All rights reserved.
//



/*

 IMPT

	From "http://stackoverflow.com/questions/24102104/how-to-import-swift-code-to-objective-c"
	By  "Andrei Papancea"
 	Note: Changed part of the codes by JNYJ

 */


#import "ImportSwiftClass2OBJC.h"

/*

 To import Swift code into Objective-C from the same framework

 Under Build Settings, in Packaging, make sure the Defines Module setting for that framework target is set to Yes. Import the Swift code from that framework target into any Objective-C .m file within that framework target using this syntax and substituting the appropriate names:

 #import "ProductName-Swift.h"

 */
#import "DevQuestionsHow2QEUN-swift.h"


@implementation ImportSwiftClass2OBJC

+(void)testing{

	if ([JNYJ isRunningiOS80]) {
		NSLog(@"Call succeed - ([JNYJ isRunningiOS80])");
	}
}

@end
