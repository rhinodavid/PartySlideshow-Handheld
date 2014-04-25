//
//  DWViewController.m
//  PartySlideshowHandheld
//
//  Created by David Walsh on 4/24/14.
//  Copyright (c) 2014 David Walsh. All rights reserved.
//

#import "DWViewController.h"
#import "DWConnectToSlideshowViewController.h"

@interface DWViewController ()

@end

@implementation DWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

-(void)viewDidAppear:(BOOL)animated {
      //  [self loadConnectTable];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadConnectTable {
    DWConnectToSlideshowViewController *vc = [[DWConnectToSlideshowViewController alloc] initWithStyle:UITableViewStylePlain];
    
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nc animated:NO completion:nil];

}


@end
