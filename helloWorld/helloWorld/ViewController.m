//
//  ViewController.m
//  helloWorld
//
//  Created by Stephen Kopylov - Home on 05/02/16.
//  Copyright © 2016 Stephen Kopylov - Home. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"helloWord");
    
    
    self.title =  @"test";
    
    
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    
    // Update the view, if already loaded.
}

@end
