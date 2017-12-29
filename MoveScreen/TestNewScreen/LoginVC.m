//
//  LoginVC.m
//  TestNewScreen
//
//  Created by Pawan kumar on 12/13/17.
//  Copyright © 2017 Pawan Kumar. All rights reserved.
//

#import "LoginVC.h"
#import "GestUserScreenVC.h"

@interface LoginVC ()

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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


-(IBAction)gestButtonTap:(id)sender{
    
    if ([self.cartString isEqualToString:@"CART"]) {
        
        [self dismissViewControllerAnimated:YES completion:^{
            
            [[NSNotificationCenter defaultCenter] postNotificationName:@"SHOWGESTUSER" object:nil];
        
        }];
        
    }else{
        
        [self dismissViewControllerAnimated:YES completion:^{
            
            [self gotoGestUserVC];
        }];
    }
}

-(void)gotoGestUserVC{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    GestUserScreenVC *viewController =[storyboard instantiateViewControllerWithIdentifier:@"GestUserScreenVC"];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
