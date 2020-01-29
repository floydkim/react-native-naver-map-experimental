//
//  RNTNaverMap.m
//  nativeModuleTutorial
//
//  Created by Floyd on 2020/01/27.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <React/RCTViewManager.h>
#import <NMapsMap/NMFNaverMapView.h>

@interface RNTNaverMap : RCTViewManager
@end

@implementation RNTNaverMap

RCT_EXPORT_MODULE(NaverMap);

- (UIView *)view
{
//  NMFNaverMapView *naverMapView = [[NMFNaverMapView alloc] initWithFrame:self.view.frame];
//  [self.view addSubview:naverMapView];
  
//  return [[NMFNaverMapView alloc] init];
//  return [[NMFMapView alloc] init];
  
  UIView *containerView = [[UIView alloc] init];
  NMFNaverMapView *naverMapView = [[NMFNaverMapView alloc] initWithFrame:containerView.reactContentFrame];

  return naverMapView;
}


@end
