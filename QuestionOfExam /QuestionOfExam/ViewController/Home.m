//
//  Home.m
//  QuestionOfExam
//
//  Created by xalo on 15/12/17.
//  Copyright © 2015年 王靖. All rights reserved.
//

#import "Home.h"
#import "QuestionOne.h"
#import "QuestionTwo.h"
#import "QuestionThree.h"
@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}
- (IBAction)QuestionOneAction:(id)sender {
    
    [self.navigationController pushViewController:[QuestionOne new] animated:YES];
    
}
- (IBAction)QuestionTwoAction:(id)sender {
    
    [self.navigationController pushViewController:[QuestionTwo new] animated:YES];
}

- (IBAction)QuestionThreeAction:(id)sender {
    
    [self.navigationController pushViewController:[QuestionThree new] animated:YES];
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
