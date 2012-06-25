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

@synthesize delegate = _delegate;
@synthesize isLoginSuccess = _isLoginSuccess;
@synthesize userid = _userid;
@synthesize password = _password;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setUserid:nil];
    [self setPassword:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)login:(id)sender {
    if (_delegate && [_delegate respondsToSelector:@selector(login:withPassword:)]) {
        [_delegate login:_userid.text withPassword:_password.text];
    }
}

- (void)setIsLoginSuccess:(BOOL)isLoginSuccess {
    _isLoginSuccess = isLoginSuccess;
    if (_isLoginSuccess) {
        [self performSegueWithIdentifier:@"showStartViewController" sender:self];
    }
}
@end
