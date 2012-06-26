//
//  RRLoginViewController.m
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 1..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "RRLoginViewController.h"

@interface RRLoginViewController ()

@end

@implementation RRLoginViewController

@synthesize userid = _userid;
@synthesize password = _password;

- (void)viewDidUnload {
    [self setUserid:nil];
    [self setPassword:nil];
    [super viewDidUnload];
}

- (IBAction)login:(id)sender {
    if ([RRApp sharedRRApp].delegate && [[RRApp sharedRRApp].delegate respondsToSelector:@selector(login:withPassword:)]) {
        [[RRApp sharedRRApp].delegate login:_userid.text withPassword:_password.text];
    }
    else {
        [[RRApp sharedRRApp].service loginWithUserid:_userid.text withPassword:_password.text completion:^(id account, int code){
            if (code == RR_OK) {
                [RRApp sharedRRApp].account = account;
                [self performSelector:@selector(showHomeView) withObject:nil afterDelay:0];
            }
            else {
                [self alert:@"로그인 실패"];
            }
        }];
    }
}

- (void)showHomeView {
    [self performSegueWithIdentifier:@"showHomeView" sender:self];
}

@end
