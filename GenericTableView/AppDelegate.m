//
//  AppDelegate.m
//  GenericTableView
//
//  Created by Jeff Kelley on 5/17/16.
//  Copyright © 2016 Jeff Kelley. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@interface AppDelegate () <UITabBarControllerDelegate>

@property (nonatomic, strong) ViewController <NSDate *> *timestampsViewController;

@end

@implementation AppDelegate

#pragma mark - UIApplicationDelegate Protocol Methods

- (BOOL)          application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UITabBarController *tabBarController =
    (UITabBarController *)self.window.rootViewController;
    
    if (tabBarController != nil &&
        [tabBarController isKindOfClass:[UITabBarController class]]) {
        tabBarController.delegate = self;
        
        NSArray <NSString *> *strings = @[@"Foo", @"Bar", @"Baz", @"Fizz", @"Buzz",
                                          @"FizzBuzz"];
        
        NSArray <NSNumber *> *numbers = @[@42, @1520, @48226, @1, @0, @YES, @NO];
        
        NSArray <UIColor *> *colors = @[[UIColor redColor],
                                        [UIColor greenColor],
                                        [UIColor blueColor],
                                        [UIColor purpleColor],
                                        [UIColor orangeColor],
                                        [UIColor yellowColor],
                                        [UIColor lightGrayColor],
                                        [UIColor darkGrayColor]];
        
        ViewController <NSString *> *stringsViewController = [[ViewController alloc]
                                                              init];
        
        stringsViewController.title = @"Strings";
        stringsViewController.items = strings;
        
        ViewController <NSNumber *> *numbersViewController = [[ViewController alloc]
                                                              init];
        
        numbersViewController.title = @"Numbers";
        numbersViewController.items = numbers;
        
        ViewController <UIColor *> *colorsViewController = [[ViewController alloc]
                                                            init];
        
        colorsViewController.title = @"Colors";
        colorsViewController.items = colors;
        
        ViewController <NSDate *> *timestampsViewController = [[ViewController alloc]
                                                               init];
        
        timestampsViewController.title = @"Timestamps";
        timestampsViewController.items = @[[NSDate date]];
        
        self.timestampsViewController = timestampsViewController;
        
        NSArray <ViewController *> *viewControllers = @[stringsViewController,
                                                        numbersViewController,
                                                        colorsViewController,
                                                        timestampsViewController];
        
        NSMutableArray <UINavigationController *> *navigationControllers =
        [[NSMutableArray alloc] init];
        
        [viewControllers enumerateObjectsUsingBlock:^(ViewController * _Nonnull obj,
                                                      NSUInteger idx,
                                                      BOOL * _Nonnull stop) {
            UINavigationController *navigationController =
            [[UINavigationController alloc] initWithRootViewController:obj];
            
            [navigationControllers addObject:navigationController];
        }];
        
        tabBarController.viewControllers = navigationControllers;
    }
    
    return YES;
}

#pragma mark - UITabBarControllerDelegate Protocol Methods

- (void)tabBarController:(UITabBarController *)tabBarController
 didSelectViewController:(UIViewController *)viewController
{
    [self.timestampsViewController addItem:[NSDate date]];
}

#pragma mark -

@end
