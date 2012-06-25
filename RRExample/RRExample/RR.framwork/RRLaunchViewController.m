//
//  RRLaunchViewController.m
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 1..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "RRLaunchViewController.h"
#import "RRLoginViewController.h"

@interface RRLaunchViewController ()

@end

@implementation RRLaunchViewController

@synthesize rr = _rr;

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.rr = [[RRApp alloc] init];
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self performSelector:@selector(showLoginView) withObject:nil afterDelay:0];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showRRLoginViewController"]) {
        _rr.loginViewController = segue.destinationViewController;
    }
}

- (void)showLoginView {
    [self performSegueWithIdentifier:@"showRRLoginViewController" sender:self];
}

@end
