//
//	EWActionViewController.m
//	single-view
//
//	Created by kyoshikawa on 1/11/13.
//	Copyright (c) 2013 Electricwoods LLC. All rights reserved.
//

#import "EWActionViewController.h"
#import "EWViewController.h"

@interface EWActionViewController ()

@property (strong) NSArray *items;

@end

@implementation EWActionViewController

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

	self.items = @[
		@{@"title" : @"Menu 1"},
		@{@"title" : @"Menu 2"},
	];
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

#pragma mark -

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [self.items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSDictionary *item = [self.items objectAtIndex:indexPath.row];
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
	if (!cell) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
	}
	cell.textLabel.text = [item valueForKey:@"title"];
	return cell;
}

#pragma mark -

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark -

- (IBAction)dismissAction:(id)sender;
{
	NSAssert(NO, @"Subclass must override");
}

@end
