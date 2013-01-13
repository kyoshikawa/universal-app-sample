//
//  EWViewController_iPad.m
//  single-view
//
//  Created by kyoshikawa on 1/11/13.
//  Copyright (c) 2013 Electricwoods LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EWViewController_iPad.h"
#import "EWActionViewController.h"


@interface EWViewController_iPad ()

@property (strong) UIPopoverController *popover;

@end


@implementation EWViewController_iPad

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

	self.actionViewController.contentSizeForViewInPopover = CGSizeMake(320, 480);
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)menuAction:(id)sender
{
	if (self.popover.popoverVisible) {
		[self.popover dismissPopoverAnimated:YES];
		self.popover = nil;
	}
	else {
		self.popover = [[UIPopoverController alloc] initWithContentViewController:self.actionViewController];
		[self.popover presentPopoverFromBarButtonItem:sender permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
	}
}

//#if 0
//- (IBAction)action:(id)sender
//{
//	UIPopoverController *popovercontroller = [[UIPopoverController alloc] initWithContentViewController:self.actionViewController];
//	[popovercontroller presentPopoverFromBarButtonItem:sender permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
//}
//#endif


@end
