
# PresentViewController To PushViewController

=========

## PresentViewController To PushViewController.
------------
 Added Some screens here.
 
![](https://github.com/pawankv89/MoveScreen/blob/master/Screens/1.png)
![](https://github.com/pawankv89/MoveScreen/blob/master/Screens/2.png)
![](https://github.com/pawankv89/MoveScreen/blob/master/Screens/3.png)

## Usage
------------
 iOS 9 Demo showing how to droodown on iPhone X Simulator in  Objective-C.


```objective-c

 [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(postGestUser) name:@"SHOWGESTUSER" object:nil];
 
 -(void)postGestUser{
 
 UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
 GestUserScreenVC *viewController =[storyboard instantiateViewControllerWithIdentifier:@"GestUserScreenVC"];
 [self.navigationController pushViewController:viewController animated:YES];
 }

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

```

```objective-c

```

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 
