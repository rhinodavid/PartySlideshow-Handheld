//
//  DWViewController.m
//  PartySlideshowHandheld
//
//  Created by David Walsh on 4/24/14.
//  Copyright (c) 2014 David Walsh. All rights reserved.
//

#import "DWViewController.h"
#import "DWPhotoPreviewViewController.h"

@interface DWViewController ()

@end

@implementation DWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _connectionManager = [[DWPSSConnectionManager alloc] init];
    [_connectionManager setDelegate:self];
    [_connectionManager startBrowsing];
}

-(void)viewDidAppear:(BOOL)animated {
      //  [self loadConnectTable];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //NSLog(sender);
    if ([[segue identifier] isEqualToString:@"ViewPreviewScreen"]) {
        _previewController = [segue destinationViewController];
        [_previewController setDelegate:self];
    }
    
}

- (void) connectedToService:(NSNetService *)service {
    //transition to view screen
    @try {
        [self performSegueWithIdentifier:@"ViewPreviewScreen" sender:self];
    }
    @catch (NSException *exception) {
        NSLog(@"%@", exception);
    }
    @finally {
        NSLog(@"finally");
    }
}

- (void) connectionRecievedImageData:(NSData *)imageData {
    if (_previewController) {
        [_previewController displayImageFromData:imageData];
    }
}

- (void) connectionRecievedImageName:(NSString *)name {
    if (_previewController) {
        [_previewController setCurrentPhotoName:name];
    }
}

#pragma mark -
#pragma mark Delegate Methods

- (void) hidePhotoWithFileName:(NSString *)name {
    if (_connectionManager) {
        [_connectionManager sendHidePhotoNamedCommand:name];
    }
}


@end
