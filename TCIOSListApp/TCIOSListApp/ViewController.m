//
//  ViewController.m
//  TCIOSListApp
//
//  Created by Jackie on 2018/12/5.
//  Copyright © 2018 Jackie. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController
//http://127.0.0.1:8080/tcserver/list.do

- (void)postRequest{
  
    NSString * urlString = @"http://127.0.0.1:8080/tcserver/list.do";
    AFHTTPSessionManager *manger = [AFHTTPSessionManager manager];
    
    manger.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain",@"text/html",nil];
    
    [manger GET:urlString
     parameters:nil
       progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
          
           NSLog(@"%@,%@",task,responseObject);
           
           
       } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
           
           NSLog(@"error %@",error);
       }];
}

- (void)click:(id)sedner{
    [self postRequest];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [button setTitle:@"click"
            forState:UIControlStateNormal];
    
    [button addTarget:self
               action:@selector(click:)
     forControlEvents:  UIControlEventTouchDown];
    
    button.frame =CGRectMake(0, 100, 100, 50);
    
    [self.view addSubview:button];
    // Do any additional setup after loading the view, typically from a nib.
}



@end
