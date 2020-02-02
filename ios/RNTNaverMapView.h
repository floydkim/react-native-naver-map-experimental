//
//  RNTNaverMapView.h
//  nativeModuleTutorial
//
//  Created by Floyd on 2020/02/01.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import <React/RCTComponent.h>
#import <NMapsMap/NMFNaverMapView.h>

@interface RNTNaverMapView : NMFNaverMapView
//+ (RNTNaverMapView *)init;

@property (nonatomic, copy) RCTBubblingEventBlock onTapMapView;


@end
