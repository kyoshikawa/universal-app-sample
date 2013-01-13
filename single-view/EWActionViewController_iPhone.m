//
//  EWActionViewController_iPhone.m
//  single-view
//
//  Created by kyoshikawa on 1/11/13.
//  Copyright (c) 2013 Electricwoods LLC. All rights reserved.
//

#import "EWActionViewController_iPhone.h"
#import "EWViewController.h"

@interface EWActionViewController_iPhone ()

@end

@implementation EWActionViewController_iPhone

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissAction:(id)sender;
{
	[self.viewController dismissViewControllerAnimated:YES completion:^{
	}];
}

@end
