//
//  DWPhotoPreviewViewController.h
//  PartySlideshowHandheld
//
//  Created by David Walsh on 4/24/14.
//  Copyright (c) 2014 David Walsh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DWPhotoPreviewViewControllerDelegate

-(void)hidePhotoWithFileName:(NSString*)name;

@end

@interface DWPhotoPreviewViewController : UIViewController

@property (weak) IBOutlet UIImageView *previewView;
@property (weak) IBOutlet UIButton *hideButton;
@property (strong, nonatomic) NSString *currentPhotoName;

@property (nonatomic, assign) id delegate;

-(IBAction)hideCurrentPhoto:(id)sender;
-(void)displayImageFromData:(NSData *)image;

@end
