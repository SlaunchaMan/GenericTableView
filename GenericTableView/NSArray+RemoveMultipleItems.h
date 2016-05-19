//
//  NSArray+RemoveMultipleItems.h
//  GenericTableView
//
//  Created by Jeff Kelley on 5/17/16.
//  Copyright © 2016 Jeff Kelley. All rights reserved.
//

@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (RemoveMultipleItems)

- (NSArray *)jrk_arrayByRemovingObjectsFromArray:(NSArray *)array;

@end

NS_ASSUME_NONNULL_END
