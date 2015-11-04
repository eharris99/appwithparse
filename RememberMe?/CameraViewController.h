//
//  CameraViewController.h
//  RememberMe?
//
//  Created by Elise Harris on 10/29/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CameraViewController : UIViewController<UIImagePickerControllerDelegate,
UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)selectPhoto:(id)sender;
- (IBAction)takePhoto:(id)sender;

@end
