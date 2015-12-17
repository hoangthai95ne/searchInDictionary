//
//  dictionaryHW.m
//  ArrayObjects
//
//  Created by Hoàng Thái on 12/17/15.
//  Copyright © 2015 HOANGTHAI. All rights reserved.
//

#import "dictionaryHW.h"

@interface dictionaryHW ()

@end

@implementation dictionaryHW

- (void)viewDidLoad {
    [super viewDidLoad];

    NSDictionary* data = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"words" ofType:@"plist"]];
    
    //Sap xep lai thu tu cac chuoi theo a -> z
    
    NSMutableDictionary *data2 = [[NSMutableDictionary alloc] initWithDictionary:data];
    
    NSArray* temparr_a = [[data2 objectForKey:@"a"] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    NSArray* temparr_b = [[data2 objectForKey:@"b"] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    NSArray* temparr_c = [[data2 objectForKey:@"c"] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    NSArray* temparr_d = [[data2 objectForKey:@"d"] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    //set value
    
    [data2 setValue:temparr_a forKey:@"a"];
    [data2 setValue:temparr_b forKey:@"b"];
    [data2 setValue:temparr_c forKey:@"c"];
    [data2 setValue:temparr_d forKey:@"d"];
    
    //enter the char need to sreach in dictionary
    
    NSString* enterHere = @"a";
    
    NSLog(@"Words in Dictionary start with %@ : %@", enterHere, [data2 valueForKey:enterHere]);
}



@end
