//
//  DWPhotoPreviewViewController.h
//  PartySlideshowHandheld
//
//  Created by David Walsh on 4/24/14.
//  Copyright (c) 2014 David Walsh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DWPhotoPreviewViewController : UIViewController

@property IBOutlet UIImageView *previewView;

-(void)displayImageFromData:(NSData *)image;

@end
