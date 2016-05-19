//
//  ViewController.m
//  GenericTableView
//
//  Created by Jeff Kelley on 5/17/16.
//  Copyright © 2016 Jeff Kelley. All rights reserved.
//

#import "ViewController.h"

#import "NSArray+RemoveMultipleItems.h"

@interface ViewController ()

- (nullable id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end

@implementation ViewController

#pragma mark -

- (void)setItems:(NSArray *)items
{
    _items = [items copy];
    
    [self.tableView reloadData];
}

- (NSObject *)itemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row < self.items.count) {
        return self.items[indexPath.row];
    }
    
    return nil;
}

- (void)addItem:(NSObject *)item
{
    [self addItems:@[item]];
}

- (void)addItems:(NSArray *)items
{
    self.items = [self.items arrayByAddingObjectsFromArray:items];
}

- (void)removeItem:(NSObject *)item
{
    [self removeItem:item];
}

- (void)removeItems:(NSArray *)items
{
    self.items = [self.items jrk_arrayByRemovingObjectsFromArray:items];
}

#pragma mark - UITableViewDataSource Protocol Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                      reuseIdentifier:@"cell"];
    }
    
    NSObject *item = [self itemAtIndexPath:indexPath];
    
    cell.textLabel.text = item.description;
    cell.detailTextLabel.text = NSStringFromClass([item class]);
    
    return cell;
}

#pragma mark - UITableViewDelegate Protocol Methods

- (void)tableView:(UITableView *)tableView
  willDisplayCell:(UITableViewCell *)cell
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSObject *item = [self itemAtIndexPath:indexPath];
    
    if ([item isKindOfClass:[UIColor class]]) {
        UIColor *color = (UIColor *)item;
        
        cell.backgroundColor = color;
    }
}

#pragma mark -

@end
