//
//  Category4Testing.m
//  0000DevQuestionsHow2QEUN
//
//  Created by JNYJ on 14-11-14.
//  Copyright (c) 2014年 JNYJ. All rights reserved.
//



/*
 IMPT
	From  http://www.cocoachina.com/bbs/read.php?tid-105689.html
	By  "mhmwadm"
 Note: Changed part of the codes by JNYJ
 */




#import "Category4Testing.h"

@implementation Category4Testing

@end
//2.6	category可以用来调试
//除了隐藏私有方法外，我主要用它截住函数。
//例1：测试时我想知道TableViewCell有没有释放，就可以这样写
@implementation UITableViewCell(dealloc)
-(void)dealloc
{
	NSLog(@"%@",NSStringFromSelector(_cmd));
	NSArray *array = [self subviews];//allSubviews(self); 		// allSubviews是cookBook里的函数，可以取一个view的所有subView ,在这个文档后面也有
	NSLog(@"%@",array);

//	[super dealloc];
}
@end
//其它的类也可以这样写，你随便输出什么
//例2：我调试程序，觉得table的大小变了，想找到在哪改变的，这样做：
@implementation UITableView(setframe)
-(void)setFrame:(CGRect)frame
{
	NSLog(@"%@",self);
	[super setFrame: frame];
}
@end
