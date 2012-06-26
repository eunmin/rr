//
//  CredentailUtils.m
//  TextAt
//
//  Created by Eunmin Kim on 12. 5. 15..
//  Copyright (c) 2012년 scatterlab. All rights reserved.
//

#import "CredentailUtils.h"

@implementation CredentailUtils

+ (void)storeUserid:(NSString *)userid withPassword:(NSString *)password withHost:(NSString *)host {
    NSURLCredential *credentail = [NSURLCredential credentialWithUser:userid password:password persistence:NSURLCredentialPersistencePermanent];
    NSURLProtectionSpace *protectionSpace = [[NSURLProtectionSpace alloc] initWithHost:host port:0 protocol:@"http" realm:nil authenticationMethod:nil];
    [[NSURLCredentialStorage sharedCredentialStorage] setDefaultCredential:credentail forProtectionSpace:protectionSpace];
}

+ (NSString *)passwordByUserid:(NSString *)userid withHost:(NSString *)host {
    NSURLProtectionSpace *protectionSpace = [[NSURLProtectionSpace alloc] initWithHost:host port:0 protocol:@"http" realm:nil authenticationMethod:nil];
    NSDictionary *credentailDictionary = [[NSURLCredentialStorage sharedCredentialStorage] credentialsForProtectionSpace:protectionSpace];
    NSURLCredential *credentail = [credentailDictionary objectForKey:userid];
    if (!credentail) {
        return nil;
    }
    return credentail.password;
}

@end
