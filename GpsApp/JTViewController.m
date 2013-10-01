//
//  JTViewController.m
//  GpsApp
//
//  Created by John Terry on 9/30/13.
//  Copyright (c) 2013 John Terry. All rights reserved.
//

#import "JTViewController.h"

@interface JTViewController ()

@property (nonatomic, retain) CLLocationManager * locationManager;

@end

@implementation JTViewController

@synthesize locationManager=_locationManager;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self setupGps];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupGps
{
    if (nil == _locationManager)
        _locationManager = [[CLLocationManager alloc] init];

    _locationManager.delegate = self;
    _locationManager.desiredAccuracy = kCLLocationAccuracyKilometer;

    // Set a movement threshold for new events.
    _locationManager.distanceFilter = 500; // meters

    [_locationManager startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    NSLog(@"Got a location update! %@", locations);
}

@end
