//
//  DetailViewController.m
//  RememberMe?
//
//  Created by Elise Harris on 9/25/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import "DetailViewController.h"
#import "KardashiansCollectionViewController.h"
#import "RandomKardashian.h"

int kardashianSelected;
BOOL answer1Correct;
BOOL answer2Correct;
BOOL answer3Correct;
BOOL answer4Correct;
int scoreNumber;
BOOL gameInProgress;
BOOL isTheNameNew;

@interface DetailViewController ()
{
    NSArray *familyMaleNames;
    NSArray *familyFemaleNames;
    NSArray *familyNames;
    NSMutableArray *buttonOptions;
//    NSString *randomlyGeneratedFemaleName1;
//    NSString *randomlyGeneratedFemaleName2;
//    NSString *randomlyGeneratedFemaleName3;
//    NSString *randomlyGeneratedMaleName1;
//    NSString *randomlyGeneratedMaleName2;
//    NSString *randomlyGeneratedMaleName3;

}


@end

@implementation DetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    familyMaleNames = @[@"Damon", @"Kanye", @"Kris", @"Scott"];
    
    familyFemaleNames = @[@"Kim",
                    @"Kourtney", @"Kendall",@"Khloe",@"Kylie",@"North West",@"Cris",@"Naya"];
    
    familyNames =@[@"Damon", @"Kanye", @"Kris", @"Scott", @"Kim",
                   @"Courtney", @"Kendall",
                   @"Khloe", @"Kylie",
                   @"North West",@"Cris",@"Naya"];
 self.score.text = [NSString stringWithFormat:@"%i", scoreNumber];
    
    
    
self.kardashianPic.image = [UIImage imageNamed:self.kardashianImage];
    
    NSMutableArray *buttonOptions = [[NSMutableArray alloc] init];
    
    if([familyFemaleNames containsObject: self.kardashianTestName]) {
            int i;
            for(i=0;i<[familyFemaleNames count];i++) {
                if (familyFemaleNames[i] !=self.kardashianTestName){
                [buttonOptions addObject:familyFemaleNames[i]];
            }
            }
        [self.answer1Text setTitle: buttonOptions[0] forState: UIControlStateNormal];
            [self.answer2Text setTitle: buttonOptions[1] forState: UIControlStateNormal];
            [self.answer3Text setTitle: self.kardashianTestName forState: UIControlStateNormal];
            [self.answer4Text setTitle: buttonOptions[2] forState: UIControlStateNormal];
        }
    
    
    if([familyMaleNames containsObject: self.kardashianTestName]) {
        int i;
        for(i=0;i<[familyMaleNames count];i++) {
            if (familyMaleNames[i] !=self.kardashianTestName){
                [buttonOptions addObject:familyMaleNames[i]];
            }
        }

        [self.answer1Text setTitle: buttonOptions[0] forState: UIControlStateNormal];
        [self.answer2Text setTitle: buttonOptions[1] forState: UIControlStateNormal];
        [self.answer3Text setTitle: self.kardashianTestName forState: UIControlStateNormal];
        [self.answer4Text setTitle: buttonOptions[2] forState: UIControlStateNormal];
    }
}




//if(isTheObjectThere == [familyMaleNames containsObject: self.kardashianTestName])
//{
//            randomlyGeneratedMaleName1=;
//            randomlyGeneratedMaleName2=
//            randomlyGeneratedMaleName3=[familyMaleNames objectAtIndex:(rand()%3)];

            
//      if (self.kardashianTestName != randomlyGeneratedMaleName1) {
//            [self.answer1Text setTitle: [familyMaleNames objectAtIndex:(rand()%1)] forState: UIControlStateNormal];
//            [self.answer2Text setTitle: [familyMaleNames objectAtIndex:(rand()%2)] forState: UIControlStateNormal];
//            [self.answer3Text setTitle: self.kardashianTestName forState: UIControlStateNormal];
//            [self.answer4Text setTitle: [familyMaleNames objectAtIndex:(rand()%3)] forState: UIControlStateNormal];
//    }
//}


//    self.randomKardashian=[[RandomKardashian alloc] init];

//    self.answer2Text= [self.randomKardashian randomName];
//
//    self.answer3Text= [self.randomKardashian randomName];
//    self.answer4Text= [self.randomKardashian randomName];

    
    
//self.kardashianPic.image= [UIImage imageNamed:self.kardashianImage];
    // Do any additional setup after loading the view.



//-(void) loadButtons {
//    
//    
//    
//    switch (kardashianSelected) {
//            
//        case 0:
//            
//            [self.answer1Text setTitle: @"tk" forState: UIControlStateNormal];
//            [self.answer2Text setTitle: @"tk" forState: UIControlStateNormal];
//            [self.answer3Text setTitle: @"tk" forState: UIControlStateNormal];
//            [self.answer4Text setTitle: @"None of These" forState: UIControlStateNormal];
//            
//            answer2Correct = YES;
//            
//    }
//}

//            NSLog (@"%d, %@, %d", questionSelected, self.answer2Text.text, answer2Correct );
//            break;
            
            
//        case 1:
            
//            self.questionLabel.text = [NSString stringWithFormat:@"Jean Claude Van Dam I'm _____"];
            
//            [self.answer1Button setTitle: @"Gorgeous" forState: UIControlStateNormal];
//            [self.answer2Button setTitle: @"Quite Handsome" forState: UIControlStateNormal];
//            [self.answer3Button setTitle: @"Fine" forState: UIControlStateNormal];
//            [self.answer4Button setTitle: @"Pretentious" forState: UIControlStateNormal];
//            
//            answer3Correct = YES;
//            
//            NSLog (@"%d, %@, @%d", questionSelected, self.questionLabel.text, answer3Correct );
//            
//            
//            break;
//            
//        case 2:
//            
//            self.questionLabel.text = [NSString stringWithFormat:@"Girl hurry up and write your _____ down before I dont want it no more"];
//            
//            [self.answer1Button setTitle: @"Number" forState: UIControlStateNormal];
//            [self.answer2Button setTitle: @"Address" forState: UIControlStateNormal];
//            [self.answer3Button setTitle: @"Favorite Spice Girl" forState: UIControlStateNormal];
//            [self.answer4Button setTitle: @"Social Security Number" forState: UIControlStateNormal];
//            
//            answer1Correct = YES;
//            NSLog (@"%d, %@, @%d", questionSelected, self.questionLabel.text, answer1Correct );
//            
//            break;
//            
//            
//        case 3:
//            
//            self.questionLabel.text = [NSString stringWithFormat:@"Mind ya _____, just mind ya _____!"];
//            
//            [self.answer1Button setTitle: @"Bidness" forState: UIControlStateNormal];
//            [self.answer2Button setTitle: @"Manners" forState: UIControlStateNormal];
//            [self.answer3Button setTitle: @"Privilege" forState: UIControlStateNormal];
//            [self.answer4Button setTitle: @"Momma" forState: UIControlStateNormal];
//            
//            answer1Correct = YES;
//            
//            NSLog (@"%d, %@, @%d", questionSelected, self.questionLabel.text, answer1Correct );
//            break;
//            
//            
//        case 4:
//            
//            self.questionLabel.text = [NSString stringWithFormat:@"Mama ____________!!!"];
//            
//            [self.answer1Button setTitle: @"WHYYYYYYY" forState: UIControlStateNormal];
//            [self.answer2Button setTitle: @"AYEEEE LMAOOOO" forState: UIControlStateNormal];
//            [self.answer3Button setTitle: @"YAAAAASSSSS" forState: UIControlStateNormal];
//            [self.answer4Button setTitle: @"NOOOOOO" forState: UIControlStateNormal];
//            
//            answer4Correct = YES;
//            
//            
//            NSLog (@"%d, %@, @%d", questionSelected, self.questionLabel.text, answer4Correct );
//            break;
//            
//            
//            
//        default:
//            break;
//            
//            
//    }
//

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

//- (IBAction)close:(id)sender {
//    [self dismissViewControllerAnimated:YES completion:NULL];
//}

//

- (void) rightAnswer {
    
    scoreNumber = scoreNumber + 1;
    self.score.text = [NSString stringWithFormat:@"%i", scoreNumber];
    
    
//    [self performSegueWithIdentifier:@"rightAnswer" sender:self];
    
    
    
    
    
    
    
}

- (void) wrongAnswer {
    
    
    
//    [self performSegueWithIdentifier:@"wrongAnswer" sender:self];
    
    //    self.result.image = [UIImage imageNamed: @"wrong_answer.png"];
    //  [self showNextQuestion];
    
    
    
    
    
    
    
    
}

- (IBAction)answer1:(id)sender {
    [self wrongAnswer];
}

- (IBAction)answer2:(id)sender {
    [self wrongAnswer];
}

- (IBAction)answer3:(id)sender {
    [self rightAnswer];
}

- (IBAction)answer4:(id)sender {
    [self wrongAnswer];
}

@end


