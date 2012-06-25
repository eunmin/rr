//
//  RRDelegate.h
//  RRExample
//
//  Created by Eunmin Kim on 12. 6. 2..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RRDelegate <NSObject>
@optional
- (void)login:(NSString *)userid withPassword:(NSString *)password;
@end
