//
//  RNTNaverMap.m
//  nativeModuleTutorial
//
//  Created by Floyd on 2020/01/27.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <React/RCTViewManager.h>
#import <NMapsMap/NMFMapView.h>

@interface RNTNaverMap : RCTViewManager
@end

@implementation RNTNaverMap

RCT_EXPORT_MODULE(NaverMap);

- (UIView *)view
{
  return [[NMFMapView alloc] init];
}


@end
