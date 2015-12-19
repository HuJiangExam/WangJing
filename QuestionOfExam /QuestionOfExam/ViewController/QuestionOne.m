//
//  QuestionOne.m
//  QuestionOfExam
//
//  Created by xalo on 15/12/17.
//  Copyright © 2015年 王靖. All rights reserved.
//

#import "QuestionOne.h"


@interface QuestionOne ()


@end

@implementation QuestionOne

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//对person对象赋值
    self.person = [[Person alloc]init];
    self.person.name = @"王靖";
    self.person.age = @"22";
    

//对Label赋值
    self.MessageLabel.text = [[PersonVM alloc]initWithPerson:self.person].messageText;
    
    
    
//添加观察者
    [self.person addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
    
}

- (IBAction)ChangeButtonAction:(id)sender {
    

    if ([self.MessageLabel.text isEqualToString:@"姓名:王靖 年龄:22"]) {
        
        self.person.name = @"小明";
        self.person.age = @"18";
        
        self.MessageLabel.text = [[PersonVM alloc]initWithPerson:self.person].messageText;
        
    }else{
        
        self.person.name = @"王靖";
        self.person.age = @"22";
        
        self.MessageLabel.text = [[PersonVM alloc]initWithPerson:self.person].messageText;
        
    }
    
}

//观察者实现方法
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    
    self.view.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%256/255.0 blue:arc4random()%256/255.0 alpha:1];
}

//移除观察者
-(void)dealloc{
    
    [self.person removeObserver:self forKeyPath:@"name"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
