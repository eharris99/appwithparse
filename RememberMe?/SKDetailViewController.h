//
//  SKDetailViewController.h
//  RememberMe?
//
//  Created by Elise Harris on 9/27/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Kardashian.h"

@interface SKDetailViewController : UIViewController

@property (weak, nonatomic) NSString *birthday;
@property (weak, nonatomic) NSString *relationship;
@property (weak, nonatomic) NSString *userBirthdayAnswer;
@property (weak, nonatomic) NSString *userRelationshipAnswer;


@property(nonatomic, copy) NSString *birthdayPlaceholder;
@property(nonatomic, copy) NSString *relationshipPlaceholder;

@property (weak, nonatomic) IBOutlet UIImageView *fmImageView;
@property (weak, nonatomic) IBOutlet UILabel *relationshipLabel;
@property (nonatomic, strong) Kardashian *kardashian;
- (IBAction)enterBirthday:(id)sender;
- (IBAction)enterRelationship:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *score2;

@end
