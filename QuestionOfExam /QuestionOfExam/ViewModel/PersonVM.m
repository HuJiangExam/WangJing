//
//  PersonVM.m
//  QuestionOfExam
//
//  Created by xalo on 15/12/17.
//  Copyright © 2015年 王靖. All rights reserved.
//

#import "PersonVM.h"

@implementation PersonVM


-(instancetype)initWithPerson:(Person *)person{
    
    self = [super init];
    
    if (!self) return nil;
    
    
    _person = person;
    
    _messageText = [NSString stringWithFormat:@"姓名:%@ 年龄:%@",self.person.name,self.person.age];
    
    return self;
    
}

@end
