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
#import <NMapsMap/NMFMapView.h>
#import <NMapsMap/NMFMapViewDelegate.h>
#import <NMapsMap/NMGLatLng.h>

@interface RNTNaverMap : RCTViewManager <NMFMapViewDelegate>
@end

@implementation RNTNaverMap

RCT_EXPORT_MODULE(NaverMap);
RCT_EXPORT_VIEW_PROPERTY(showLocationButton, BOOL);
//RCT_EXPORT_VIEW_PROPERTY(showIndoorLevelPicker, BOOL);

- (UIView *)view
{
//  NMFNaverMapView *naverMapView = [[NMFNaverMapView alloc] initWithFrame:self.view.frame];
//  [self.view addSubview:naverMapView];
  
//  return [[NMFNaverMapView alloc] init];
//  return [[NMFMapView alloc] init];
  
  UIView *containerView = [[UIView alloc] init];
  NMFNaverMapView *naverMapView = [[NMFNaverMapView alloc] initWithFrame:containerView.reactContentFrame];

//  UIViewController *viewController = [UIViewController new];
//  viewController.view = naverMapView;
  
  naverMapView.mapView.liteModeEnabled = NO;
//  naverMapView.showIndoorLevelPicker = YES; // not working


  return naverMapView;
}

- (void)didTapMapView:(CGPoint)point LatLng:(NMGLatLng *)latlng {
  NSLog(@"%f, %f", latlng.lat, latlng.lng);
}


@end
