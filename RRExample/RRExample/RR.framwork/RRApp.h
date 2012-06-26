//
//  RRApp.h
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 2..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RRService.h"
#import "RRSettings.h"
#import "RRAccount.h"

@protocol RRDelegate <NSObject>
@optional
- (void)login:(NSString *)userid withPassword:(NSString *)password;
@end

@interface RRApp : NSObject
@property (nonatomic, weak) id<RRDelegate> delegate;
@property (nonatomic, strong) RRService *service;
@property (nonatomic, strong) RRSettings *settings;
@property (nonatomic, strong) RRAccount *account;

+ (RRApp *)sharedRRApp;

@end
