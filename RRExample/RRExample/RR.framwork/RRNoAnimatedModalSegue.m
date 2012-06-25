//
//  RRNoAnimatedModalSegue.m
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 2..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "RRNoAnimatedModalSegue.h"

@implementation RRNoAnimatedModalSegue

- (void)perform {
    [self.sourceViewController presentModalViewController:self.destinationViewController animated:NO];
}
@end
