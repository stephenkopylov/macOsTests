//
//  AppDelegate.h
//  MenuOnlyApp
//
//  Created by Stephen Kopylov - Home on 05/02/16.
//  Copyright © 2016 Stephen Kopylov - Home. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (strong, nonatomic) NSStatusItem *statusItem;

@property (strong, nonatomic) NSWindowController *statusWindowController;

@end

