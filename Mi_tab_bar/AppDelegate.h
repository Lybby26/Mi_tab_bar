//
//  AppDelegate.h
//  Mi_tab_bar
//
//  Created by Mac Mini on 11/1/17.
//  Copyright © 2017 lybby26. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

