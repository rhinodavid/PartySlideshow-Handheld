//
//  DWViewController.h
//  PartySlideshowHandheld
//
//  Created by David Walsh on 4/24/14.
//  Copyright (c) 2014 David Walsh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DWPSSConnectionManager.h"
#import "DWPhotoPreviewViewController.h"

@interface DWViewController : UIViewController <DWPSSConnectionManagerDelegate, DWPhotoPreviewViewControllerDelegate>

@property (strong) DWPSSConnectionManager *connectionManager;
@property DWPhotoPreviewViewController *previewController;


-(void)sendObject:(id)object;

@end
