//
//  EWViewController.m
//  single-view
//
//  Created by kyoshikawa on 1/11/13.
//  Copyright (c) 2013 Electricwoods LLC. All rights reserved.
//

#import "EWViewController.h"
#import "EWActionViewController.h"

@interface EWViewController ()

@end

@implementation EWViewController

- (void)viewDidLoad
{
	NSLog(@"class=%@", [self class]);
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)menuAction:(id)sender
{
	NSLog(@"class=%@", [self class]);
	NSAssert(NO, @"Subclass must override");
}

@end
