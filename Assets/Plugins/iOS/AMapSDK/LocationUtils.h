#include "UnityInterface.h"

#import <AMapFoundationKit/AMapFoundationKit.h>

#import <AMapLocationKit/AMapLocationKit.h>

#if defined(__cplusplus)
extern "C"
{
    AMapLocationManager * locationManager;
    
    void LocInitialize(){
        
        // Do any additional setup after loading the view, typically from a nib.
        [AMapServices sharedServices].apiKey =@"b11f8c53896a90c72da9924945515663";
        
        locationManager = [[AMapLocationManager alloc] init];
        
        // 带逆地理信息的一次定位（返回坐标和地址信息）
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        //   定位超时时间，最低2s，此处设置为10s
        locationManager.locationTimeout =10;
        
        //   逆地理请求超时时间，最低2s，此处设置为10s
        locationManager.reGeocodeTimeout = 10;
        
        NSLog(@"LocationUtils.LocInitialize: done.");
    }
    
    void LocRequest(){
        
        NSLog(@"LocationUtils.LocRequest: begin");
        [ locationManager requestLocationWithReGeocode:YES completionBlock:^(CLLocation *location, AMapLocationReGeocode *regeocode, NSError *error) {
            
            NSLog(@"LocationUtils.LocRequest: done.");
            if (error)
            {
                NSLog(@"LocationUtils.LocRequest: locError:{%ld - %@};", (long)error.code, error.localizedDescription);
                
                if (error.code == AMapLocationErrorLocateFailed)
                {
                    return;
                }
            }
            
            NSLog(@"LocationUtils.LocRequest: full location:%@", location);
            
            if (regeocode)
            {
                NSLog(@"LocationUtils.LocRequest: reGeocode:%@", regeocode);
                NSString * address = [NSString stringWithFormat:@"%@%@%@%@",regeocode.city,regeocode.district,regeocode.street,regeocode.number];
                const char * callbackStr = [address UTF8String];
                UnitySendMessage("AMapAdapter","OnIOSGetLocationCallback",callbackStr);
            }
            
        }];

    }
}
#endif
