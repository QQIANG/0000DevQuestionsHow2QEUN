//
//  CountingChar.m
//  DevQuestionsHow2QEUN
//
//  Created by JNYJ on 14-11-14.
//  Copyright (c) 2014年 JNYJ. All rights reserved.
//

#import "CountingChar.h"

@implementation CountingChar
+ (void)testing{
	NSString *string_ = @"+ (BOOL)rangeString:(NSString *)string repeatCount:(NSInteger)Num{";
	if([CountingChar rangeString:@"string" repeatCount:3]){
		NSLog(@"Equals");
	}else{
		NSLog(@"Not Equals");
	}
}
+ (BOOL)rangeString:(NSString *)string repeatCount:(NSInteger)Num{
	NSString *lastStr = @"";
	NSInteger count = 1;
	for (int i = 0; i < string.length; i++) {
		NSString *newStr = [string substringWithRange:NSMakeRange(i, 1)];
		if ([lastStr isEqualToString:newStr]) {
			count ++;
			if (Num == count) {
				return YES;
			}
		}else{
			count = 1;
		}
		lastStr = newStr;
	}
	return NO;
}

@end
