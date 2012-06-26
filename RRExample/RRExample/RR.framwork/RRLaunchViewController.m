//
//  RRLaunchViewController.m
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 1..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "RRLaunchViewController.h"
#import "RRLoginViewController.h"
#import "RRApp.h"
#import "CredentailUtils.h"
#import "RRAccount.h"
#import "RRService.h"

@interface RRLaunchViewController ()

@end

@implementation RRLaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self performSelector:@selector(showLoginView) withObject:nil afterDelay:0];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated {
    NSString *userid = [RRApp sharedRRApp].settings.autoLoginUserid;
    
    if (userid && [RRApp sharedRRApp].settings.isAutoLogin) {
        NSString *password = [CredentailUtils passwordByUserid:userid withHost:[RRApp sharedRRApp].service.host];

        [[RRApp sharedRRApp].service loginWithUserid:userid withPassword:password completion:^(id account, int code){
            if (code == RR_OK) {
                [RRApp sharedRRApp].account = account;
                [self performSelector:@selector(showHomeView) withObject:nil afterDelay:0];
            }
            else {
                [self performSelector:@selector(showLoginView) withObject:nil afterDelay:0];
            }
        }];
    }
    else {
        [self performSelector:@selector(showLoginView) withObject:nil afterDelay:0];
    }
    [super viewWillAppear:animated];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

}

- (void)showLoginView {
    [self performSegueWithIdentifier:@"showLoginView" sender:self];
}

- (void)showHomeView {
    [self performSegueWithIdentifier:@"showHomeView" sender:self];
}

@end
