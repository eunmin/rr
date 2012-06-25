//
//  RRApp.m
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 2..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "RRApp.h"

@implementation RRApp

@synthesize loginViewController = _loginViewController;
@synthesize delegate = _delegate;

- (void)setIsLoginSuccess:(BOOL)isLoginSuccess {
    _loginViewController.isLoginSuccess = isLoginSuccess;
}

- (BOOL)isLoginSuccess {
    return _loginViewController.isLoginSuccess;
}

- (void)setLoginViewController:(RRLoginViewController *)loginViewController {
    _loginViewController = loginViewController;
    _loginViewController.delegate = _delegate;
}
@end
