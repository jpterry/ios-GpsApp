//
//  JTViewController.h
//  GpsApp
//
//  Created by John Terry on 9/30/13.
//  Copyright (c) 2013 John Terry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface JTViewController : UIViewController <CLLocationManagerDelegate>

- (void) setupGps;

@end
