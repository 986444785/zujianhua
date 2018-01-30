//
//  ShowViewController.m
//  ModuleTest
//
//  Created by chenweibin on 2018/1/30.
//  Copyright © 2018年 配得好. All rights reserved.
//

#import "ShowViewController.h"
#import "UIViewController+MyBase.h"
#import "BBCModule.h"
@interface ShowViewController ()

@end

@implementation ShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
        NSLog(@"收到params  %@",self.params);

}

- (IBAction)showBtn:(id)sender {

    NSDictionary * params = @{FKControllerNameRouteParam:@"PresentViewController",@"phone":@"13128741731"};
    BBCModule * module = [[BBCModule alloc]init];
    [module _handlerSceneWithPresent:YES parameters:params];
    
     
    
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
