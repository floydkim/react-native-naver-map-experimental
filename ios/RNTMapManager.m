//
//  RNTMapManager.m
//  nativeModuleTutorial
//
//  Created by Floyd on 2020/01/19.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import <MapKit/MapKit.h>

#import <React/RCTViewManager.h>

@interface RNTMapManager : RCTViewManager
@end

@implementation RNTMapManager

RCT_EXPORT_MODULE(RNTMap)
RCT_EXPORT_VIEW_PROPERTY(zoomEnabled, BOOL)

- (UIView *)view
{
  return [[MKMapView alloc] init];
}

@end
