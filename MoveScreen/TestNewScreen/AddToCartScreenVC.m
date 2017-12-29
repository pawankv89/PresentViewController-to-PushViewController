//
//  AddToCartScreenVC.m
//  TestNewScreen
//
//  Created by Pawan kumar on 12/13/17.
//  Copyright © 2017 Pawan Kumar. All rights reserved.
//

#import "AddToCartScreenVC.h"
#import "LoginVC.h"
#import "GestUserScreenVC.h"

@interface AddToCartScreenVC ()

@end

@implementation AddToCartScreenVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(postGestUser) name:@"SHOWGESTUSER" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)addTocartButton:(id)sender{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    LoginVC *viewController =[storyboard instantiateViewControllerWithIdentifier:@"LoginVC"];
    viewController.cartString = @"CART";
    [self presentViewController:viewController animated:YES completion:^{}];
}

-(void)postGestUser{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    GestUserScreenVC *viewController =[storyboard instantiateViewControllerWithIdentifier:@"GestUserScreenVC"];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
