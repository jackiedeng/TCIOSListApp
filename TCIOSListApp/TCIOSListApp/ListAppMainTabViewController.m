//
//  ListAppMainTabViewController.m
//  TCIOSListApp
//
//  Created by jackiedeng on 2018/12/7.
//  Copyright © 2018 Jackie. All rights reserved.
//

#import "ListAppMainTabViewController.h"
#import "ViewController.h"
#import <Flutter/Flutter.h>

@interface ListAppMainTabViewController ()

@end

@implementation ListAppMainTabViewController

- (UINavigationController*)subViewControllerByCtr:(UIViewController*)vc{
 
    UINavigationController * anv = [[UINavigationController alloc] initWithRootViewController:vc];
    
//    anv.tabBarItem = [UITabBarItem new];
    anv.tabBarItem.title = @"icon";
    
    return anv;
}
    
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSMutableArray * array = [NSMutableArray array];
    
    [array addObject:[self subViewControllerByCtr:[ViewController new]]];
    
    [array addObject:[FlutterViewController new]];

    [self setViewControllers:array];
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
