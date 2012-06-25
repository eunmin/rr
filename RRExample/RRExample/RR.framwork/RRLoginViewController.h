//
//  RRLoginViewController.h
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 1..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "RRFormViewController.h"
#import "RRDelegate.h"

@interface RRLoginViewController : RRFormViewController

@property (nonatomic, weak) IBOutlet id<RRDelegate> delegate;
@property (nonatomic) BOOL isLoginSuccess;

@property (weak, nonatomic) IBOutlet UITextField *userid;
@property (weak, nonatomic) IBOutlet UITextField *password;

- (IBAction)login:(id)sender;

@end
