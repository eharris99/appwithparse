//
//  DetailViewController.h
//  RememberMe?
//
//  Created by Elise Harris on 9/25/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KardashiansCollectionViewCell.h"
#import "KardashiansCollectionViewController.h"
#import "RandomKardashian.h"




@interface DetailViewController : UIViewController

@property (nonatomic, strong) UIImage *kardashianImage;
@property (nonatomic, strong) IBOutlet UIImageView *kardashianPic;
@property (nonatomic, strong) NSString *kardashianTestName;
@property (strong, nonatomic) RandomKardashian* randomKardashian;

@property (weak, nonatomic) IBOutlet UILabel *score;

@property (weak, nonatomic) IBOutlet UIImageView *result;

- (IBAction)answer1:(id)sender;
- (IBAction)answer2:(id)sender;
- (IBAction)answer3:(id)sender;
- (IBAction)answer4:(id)sender;
@property (nonatomic) IBOutlet UIButton *answer1Text;
@property (nonatomic) IBOutlet UIButton *answer2Text;
@property (nonatomic) IBOutlet UIButton *answer3Text;
@property (nonatomic) IBOutlet UIButton *answer4Text;

@end
