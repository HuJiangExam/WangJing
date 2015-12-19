//
//  PersonVM.h
//  QuestionOfExam
//
//  Created by xalo on 15/12/17.
//  Copyright © 2015年 王靖. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@interface PersonVM : NSObject

- (instancetype)initWithPerson:(Person *)person;

@property (strong,nonatomic)Person *person;
@property (strong,nonatomic)NSString *messageText;

@end
