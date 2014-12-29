//
//  ViewController.m
//  KeyChainTestWritePart
//
//  Created by Jason on 2014/12/29.
//  Copyright (c) 2014年 Zoaks. All rights reserved.
//

#import "ViewController.h"

#define SERVICE_NAME @"HAPPY_TEST"
#define GROUP_NAME @"com.happytest.KeyChainTest" //GROUP NAME should start with application identifier.

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1). Initialization of the class
    keychain = [[HTKeychain alloc] initWithService:SERVICE_NAME withGroup:nil];
    
    // 2). How to Add an item to keychain
    [self addItem];
    
    // 3). Finding an item in the keychain
    [self findItem];
    
    // 4) .Update an item in the keychain
    [self updateItem];
    
    // 3). Finding an item in the keychain
    [self findItem];
    
    //5). Remove an item from keychain
    [self removeItem];
}

// 2). How to Add an item to keychain
-(void)addItem
{
    NSString *key = @"YOUR_KEY";
    NSData *value = [@"YOUR_DATA" dataUsingEncoding:NSUTF8StringEncoding];
    
    if([keychain insert:key :value])
    {
        NSLog(@"Successfully added data");
    }
    else
        NSLog(@"Failed to  add data");
}

// 3). Finding an item in the keychain
-(void)findItem
{
    NSString *key= @"YOUR_KEY";
    NSData *data =[keychain find:key];
    if(data == nil)
    {
        NSLog(@"Keychain data not found");
    }
    else
    {
        NSLog(@"Data is = %@",[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
    }
}

// 4) .Update an item in the keychain
-(void)updateItem
{
    NSString *key = @"YOUR_KEY";
    NSData *value2 = [@"NEW_VALUE" dataUsingEncoding:NSUTF8StringEncoding];
    
    if([keychain update:key :value2])
    {
        NSLog(@"Successfully updated data");
    }
    else
        NSLog(@"Failed to add data");
}

//5). Remove an item from keychain
-(void)removeItem
{
    NSString *key = @"YOUR_KEY";
    if([keychain remove:key])
    {
        NSLog(@"Successfully removed data");
    }
    else
    {
        NSLog(@"Unable to remove data");
    }
}
@end
