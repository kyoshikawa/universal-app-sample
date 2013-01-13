//
//  EWViewController.h
//  single-view
//
//  Created by kyoshikawa on 1/11/13.
//  Copyright (c) 2013 Electricwoods LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
@class EWActionViewController;

@interface EWViewController : UIViewController

- (IBAction)menuAction:(id)sender;

@property (strong) IBOutlet EWActionViewController *actionViewController;

@end
