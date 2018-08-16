//
//  WebDeviceList.m
//  libHxkNet_SDK
//
//  Created by Han.zh on 2018/8/16.
//  Copyright © 2018年 Han.zhihong. All rights reserved.
//

#import "WebDeviceList.h"
#import <libHxkNet/McuNet.h>

@interface WebDeviceList ()<McuWebDeviceDelegate>
{
    McuWebDevice* wd;
}
@end

@implementation WebDeviceList

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    wd=[[McuWebDevice alloc] init];
    wd.delegate=self;
    [wd getDevices:@"ab1122"]; //user CAID,Although registered accounts are acquired.
    //[wd delegate:@"ab1122",@"D7E177-1AFE34D7E177"]; //uuid is devices cardid.
    //[wd getOnlineDevicesByCAID:@"ab1122"];
    //[wd getOnlineDevicesByUUID:@"D7E177-1AFE34D7E177"];
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

//-------------------------------------------
-(void) deviceList:(NSArray*) devList
{
    NSLog(@"devList=%@",devList);
    for(McuWebDevItem* a in devList)
    {
        NSLog(@"devList isonline=%d\n info=%@\n %@\n %@\n %@\n %@",a.isOnline,a.devname,a.dpid,a.uuid,a.flag,a.uptime);
    }
}
-(void) removeDevice:(NSString*)del_caid :(NSString*) del_uuid
{
    NSLog(@"removeDevice caid=%@ uuid=%@",del_caid,del_uuid);
}
-(void) deviceOnlineByCAID:(NSArray*) lstUUID
{
    NSLog(@"deviceOnlineByCAID=%@",lstUUID);
}
-(void) deviceOnlineByUUID:(NSArray*) lstUUID
{
    NSLog(@"deviceOnlineByUUID=%@",lstUUID);
}
//-------------------------------------------
-(void) getDevListFail:(NSString*)errMsg
{
    
}
-(void) removeDeviceFail:(NSString*)errMsg
{
    
}
-(void) getDevOnlineByCAIDFail:(NSString*)errMsg
{
    
}
-(void) getDevOnlineByUUIDFail:(NSString*)errMsg
{
    
}
@end
