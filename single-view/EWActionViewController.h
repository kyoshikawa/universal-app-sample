//
//  EWActionViewController.h
//  single-view
//
//  Created by kyoshikawa on 1/11/13.
//  Copyright (c) 2013 Electricwoods LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
@class EWViewController;

@interface EWActionViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

- (IBAction)dismissAction:(id)sender;

@property (weak) IBOutlet EWViewController *viewController;

@end
