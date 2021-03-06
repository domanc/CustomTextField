//
//  CustomTextField.h
//  CustomTextField
//
//  Created by Doman on 2017/6/12.
//  Copyright © 2017年 Doman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTextField : UITextField

//placeHoler  提示用户的文本
//count  每多少个进行分割，即每隔多少个字符添加空格符号
- (instancetype)initWithPlaceHolder:(NSString*)placeHolder withSeparateCount:(NSInteger)count;

//frame  视图的frame
//placeHoler  提示用户的文本
//count  每多少个进行分割，即每隔多少个字符添加空格符号
- (instancetype)initWithFrame:(CGRect)frame withPlaceHolder:(NSString*)placeHolder withSeparateCount:(NSInteger)count;


//frame  视图的frame
//placeHoler  提示用户的文本
//array  每多少个进行分割，即每隔多少个字符添加空格符号，可不等，但是必须要是字符串对象
- (instancetype)initWithFrame:(CGRect)frame withPlaceHolder:(NSString*)placeHolder withSeparateArray:(NSArray*)countArray;


/**
 *  用户实际输入的内容
 **/
@property (nonatomic,copy) NSString *userInputContent;

/**
 *  限制用户实际输入的数量，默认无限制
 **/
@property (nonatomic,assign) NSInteger limitCount;



@end
