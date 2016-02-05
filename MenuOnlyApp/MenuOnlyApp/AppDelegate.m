//
//  AppDelegate.m
//  MenuOnlyApp
//
//  Created by Stephen Kopylov - Home on 05/02/16.
//  Copyright © 2016 Stephen Kopylov - Home. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    _statusItem.image = [NSImage imageNamed:@"testImage"];
    [_statusItem setAction:@selector(itemClicked:)];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

-(void)itemClicked:(id) sender{
    CGRect eventFrame = [[[NSApp currentEvent] window] frame];
    CGPoint eventOrigin = eventFrame.origin;
    CGSize eventSize = eventFrame.size;
    
    // Create a window controller from your xib file
    // and get the window reference
    if(self.statusWindowController == nil){
        self.statusWindowController = [[NSWindowController alloc] initWithWindowNibName:@"testWindow"];
    }
    NSWindow *window = [self.statusWindowController window];
    
    // Calculate the position of the window to
    // place it centered below of the status item
    CGRect windowFrame = window.frame;
    CGSize windowSize = windowFrame.size;
    CGPoint windowTopLeftPosition = CGPointMake(10.0, 10.0);
    
    // Set position of the window and display it
    [window setFrameTopLeftPoint:windowTopLeftPosition];
    [window makeKeyAndOrderFront:self];
    
    // Show your window in front of all other apps
    [NSApp activateIgnoringOtherApps:YES];
}

@end
