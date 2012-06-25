//
//  RRApp.h
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 2..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RRDelegate.h"
#import "RRLoginViewController.h"

@interface RRApp : NSObject

@property (nonatomic, strong) RRLoginViewController *loginViewController;
@property (nonatomic, weak) id<RRDelegate> delegate;
@property (nonatomic) BOOL isLoginSuccess;
@end
