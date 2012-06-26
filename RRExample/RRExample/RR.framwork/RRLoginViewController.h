//
//  RRLoginViewController.h
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 1..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "RRApp.h"
#import "RRViewController.h"

@interface RRLoginViewController : RRViewController

@property (weak, nonatomic) IBOutlet UITextField *userid;
@property (weak, nonatomic) IBOutlet UITextField *password;

- (IBAction)login:(id)sender;

@end
