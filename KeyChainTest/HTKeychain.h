//
//  HTKeychain.h
//  KeyChainTestWritePart
//
//  Created by Jason on 2014/12/29.
//  Copyright (c) 2014年 Zoaks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTKeychain : NSObject
{
    NSString *service;
    NSString *group;
}

-(id) initWithService:(NSString *) service_ withGroup:(NSString *)group_;
-(BOOL) insert:(NSString *)key :(NSData *)data;
-(BOOL) update:(NSString *)key :(NSData *)data;
-(BOOL) remove:(NSString *)key;
-(NSData*) find:(NSString*)key;

@end
