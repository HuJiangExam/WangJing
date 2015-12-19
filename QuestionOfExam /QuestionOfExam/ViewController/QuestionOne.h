//
//  QuestionOne.h
//  QuestionOfExam
//
//  Created by xalo on 15/12/17.
//  Copyright © 2015年 王靖. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersonVM.h"
@interface QuestionOne : UIViewController

@property (strong,nonatomic)Person *person;

@property (strong,nonatomic)PersonVM *personVM;

@property (weak, nonatomic) IBOutlet UILabel *MessageLabel;

@end
