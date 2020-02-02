//
//  RNTNaverMapManager.m
//  nativeModuleTutorial
//
//  Created by Floyd on 2020/02/01.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import "RNTNaverMapView.h"
#import <React/RCTViewManager.h>
#import <NMapsMap/NMFMapViewDelegate.h>
#import <NMapsMap/NMGLatLng.h>
#import <NMapsMap/NMFSymbol.h>
#import <NMapsMap/NMFMapView.h>
#import <NMapsMap/NMFCameraUpdate.h>

@interface RNTNaverMapManager : RCTViewManager <NMFMapViewDelegate>
@end

@implementation RNTNaverMapManager

RCT_EXPORT_MODULE(NaverMapView)

RCT_EXPORT_VIEW_PROPERTY(showLocationButton, BOOL)
RCT_EXPORT_VIEW_PROPERTY(onTapMapView, RCTBubblingEventBlock)

//RCT_CUSTOM_VIEW_PROPERTY(region, NMGLatLng, NMFNaverMapView)
//{
//  [view setRegion:json] ? [RCTConvert NMGLatLng:json] : [defaultView.region animated:YES];
//}

- (UIView *)view
{
  UIView *containerView = [[UIView alloc] init];
  RNTNaverMapView *naverMapView = [[RNTNaverMapView alloc] initWithFrame:containerView.reactContentFrame];
  
  naverMapView.delegate = self;
  
  NMFCameraUpdate *cameraUpdate = [NMFCameraUpdate cameraUpdateWithScrollTo:NMGLatLngMake(37.5666102, 126.9783881)];
  [naverMapView.mapView moveCamera:cameraUpdate];
  
  naverMapView.mapView.liteModeEnabled = NO;
  naverMapView.mapView.indoorMapEnabled = YES;
  naverMapView.showIndoorLevelPicker = YES;
  
  return naverMapView;
}

#pragma mark NMFMapViewDelegate

- (void)didTapMapView:(CGPoint)point LatLng:(NMGLatLng *)latlng
{
  NSLog(@"%f, %f", latlng.lat, latlng.lng);
}

- (BOOL)mapView:(NMFMapView *)mapView didTapSymbol:(nonnull NMFSymbol *)symbol
{
  NSLog(@"%@", symbol.caption);
  return NO; // NO: NMFMapView까지 이벤트가 전달되어 NMFMapViewDelegate의 didTapMapView가 호출됨
}

@end
