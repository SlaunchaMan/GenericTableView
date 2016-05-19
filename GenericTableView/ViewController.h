//
//  ViewController.h
//  GenericTableView
//
//  Created by Jeff Kelley on 5/17/16.
//  Copyright © 2016 Jeff Kelley. All rights reserved.
//

@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface ViewController <ObjectType: NSObject *> : UITableViewController

@property (nullable, nonatomic, copy) NSArray <ObjectType> *items;

- (void)addItem:(ObjectType)item;
- (void)addItems:(NSArray <ObjectType> *)items;

- (void)removeItem:(ObjectType)item;
- (void)removeItems:(NSArray <ObjectType> *)items;

@end

NS_ASSUME_NONNULL_END
