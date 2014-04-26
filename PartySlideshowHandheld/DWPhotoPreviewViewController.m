//
//  DWPhotoPreviewViewController.m
//  PartySlideshowHandheld
//
//  Created by David Walsh on 4/24/14.
//  Copyright (c) 2014 David Walsh. All rights reserved.
//

#import "DWPhotoPreviewViewController.h"

@interface DWPhotoPreviewViewController ()

@end

@implementation DWPhotoPreviewViewController

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

- (void)displayImageFromData:(NSData *)image {
    UIImage *newImage = [UIImage imageWithData:image];
    [self.previewView setImage:newImage];
    [self.previewView setAlpha:1.0];
    [self.hideButton setEnabled:YES];
    
}

- (IBAction)hideCurrentPhoto:(id)sender {
    [self.previewView setAlpha:0.4];
    [self.hideButton setEnabled:NO];
    [_delegate hidePhotoWithFileName:self.currentPhotoName];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
