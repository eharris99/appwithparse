//
//  SKDetailViewController.m
//  RememberMe?
//
//  Created by Elise Harris on 9/27/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import "SKDetailViewController.h"
#import "SearchKardashiansTableViewCell.h"
#import "RandomKardashian.h"

int scoreNumber2;

@interface SKDetailViewController ()

@property (nonatomic, retain) IBOutlet UITextField* birthdayTextField;
@property (nonatomic, retain) IBOutlet UITextField* relationshipTextField;

@end

@implementation SKDetailViewController {
    NSString *userBirthdayAnswer;
    NSString *userRelationshipAnswer;
}

//@synthesize birthdayTextField;
//@synthesize relationshipTextField;



- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.kardashian.name;
    self.birthday = self.kardashian.birthday;
    self.relationship = self.kardashian.relationship;
    self.fmImageView.image = [UIImage imageNamed:self.kardashian.image];
   
//    NSMutableString *birthdayText = [NSMutableString string];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void) rightAnswer {
    
    scoreNumber2 = scoreNumber2 + 1;
    self.score2.text = [NSString stringWithFormat:@"%i", scoreNumber2];
    NSLog(@"point");
    
    
    //    [self performSegueWithIdentifier:@"rightAnswer" sender:self]
    
    
}

- (void) wrongAnswer {
    
    
    
    //    [self performSegueWithIdentifier:@"wrongAnswer" sender:self];
    
    //    self.result.image = [UIImage imageNamed: @"wrong_answer.png"];
    //  [self showNextQuestion];
    
    
    
    
    
    
    
    
}

//- (void)textFieldDidEndEditing:(UITextField *)textField {
//    if ([textField.text isEqualToString:@""])
//        return;
//    
//}
- (IBAction)enterBirthday:(id)sender {
//    self.userBirthdayAnswer = birthdayTextField.text;
//    
//    if ([userBirthdayAnswer length] == 0)
//        
//    {
//        
//        userBirthdayAnswer =@"   ";
//        
//    }
    
   
//    userBirthdayAnswer = self.birthdayTextField.text;
//    userRelationshipAnswer = self.relationshipTextField.text;
    
//    if (userBirthdayAnswer==self.kardashian.birthday) {
//        [self rightAnswer];
//    }
//
    if (self.birthdayTextField.text.length > 0) {
        userBirthdayAnswer = self.birthdayTextField.text;
    }
    
    if (userBirthdayAnswer==self.kardashian.birthday) {
        [self rightAnswer];
    }
    else {
        [self wrongAnswer];
    }
    
}

- (IBAction)enterRelationship:(id)sender {
    
//    if ([userRelationshipAnswer length] == 0)
//        
//    {
//        
//        userRelationshipAnswer =@"    ";
//        
//    }

    if (self.relationshipTextField.text.length > 0) {
        userRelationshipAnswer = self.relationshipTextField.text;
    }
    
    if (userRelationshipAnswer==self.kardashian.relationship) {
        [self rightAnswer];
    }
    else {
        [self wrongAnswer];
    }
}
@end
