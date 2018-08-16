//
//  WebDataRequest.m
//  libHxkNet_SDK
//
//  Created by Han.zh on 2018/8/16.
//  Copyright © 2018年 Han.zhihong. All rights reserved.
//

#import "WebDataRequest.h"
#import <libHxkNet/McuNet.h>

@interface WebDataRequest ()<HxkWebPocDelegate>
{
    HxkWebProc* web;
}
@end

@implementation WebDataRequest

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    web=[[HxkWebProc alloc] init];
    web.delegate=self;
    [web requestData:@"http://www.hx-kong.com" parameter:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) HxkWebProcBegin_cb:(NSURL*)url
{}
-(void) HxkWebProcCookies_cb:(NSURL*)url :(NSString*)cookie
{}
-(void) HxkWebProcData_cb:(NSURL*)url :(NSData*)data
{}
-(void) HxkWebProcFail_cb:(NSURL*)url
{}

@end
