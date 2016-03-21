//
//  User.h
//  TestDemo
//
//  Created by zhangfei on 16/1/10.
//  Copyright © 2016年 zhangfei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *passWord;
/**
 *  判断字符串中是否有中文
 *
 *  @param string <#string description#>
 *
 *  @return <#return value description#>
 */
- (BOOL)isChinese:(NSString *)string;

@end
