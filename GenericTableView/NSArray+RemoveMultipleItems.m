//
//  NSArray+RemoveMultipleItems.m
//  GenericTableView
//
//  Created by Jeff Kelley on 5/17/16.
//  Copyright © 2016 Jeff Kelley. All rights reserved.
//

#import "NSArray+RemoveMultipleItems.h"

@implementation NSArray (RemoveMultipleItems)

- (NSArray *)jrk_arrayByRemovingObjectsFromArray:(NSArray *)array
{
    NSMutableArray *newArray = [self mutableCopy];
    [newArray removeObjectsInArray:array];
    
    return [NSArray arrayWithArray:newArray];
}

@end
