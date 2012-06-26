//
//  RRApp.m
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 2..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "RRApp.h"

static RRApp *sharedRRApp;
static NSString *propertyFileName = @"RR.plist";

@interface RRApp ()
@property (nonatomic, strong) NSDictionary *properties;
@end

@implementation RRApp

@synthesize properties = _properties;

@synthesize delegate = _delegate;
@synthesize service = _service;
@synthesize settings = _settings;
@synthesize account = _account;

+ (RRApp *)sharedRRApp {
    if (!sharedRRApp) {
        sharedRRApp = [[RRApp alloc] init];
        NSString *resourcePath = [[NSBundle mainBundle] resourcePath]; 
        NSString *path = [resourcePath stringByAppendingPathComponent:propertyFileName];
        if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {

            sharedRRApp.properties = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
            
            NSString *serviceClassName = [sharedRRApp.properties valueForKey:@"ServiceClassName"];
            NSString *settingsClassName = [sharedRRApp.properties valueForKey:@"SettingsClassName"];

            sharedRRApp.service = [[NSClassFromString(serviceClassName) alloc] init];
            sharedRRApp.settings = [[NSClassFromString(settingsClassName) alloc] init];
        }
    }
    return sharedRRApp;
}

@end
