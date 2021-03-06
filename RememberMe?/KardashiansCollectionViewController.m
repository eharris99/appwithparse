//
//  KardashiansCollectionViewController.m
//  RememberMe?
//
//  Created by Elise Harris on 9/27/15.
//  Copyright © 2015 ech. All rights reserved.
//

#import "KardashiansCollectionViewController.h"
#import "KardashiansCollectionViewCell.h"
#import "DetailViewController.h"

@interface KardashiansCollectionViewController ()

@end

@implementation KardashiansCollectionViewController

{
    NSArray *kfamilyPhotos;
    NSArray *kfamilyNames;
}

static NSString * const reuseIdentifier = @"Cell2";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    kfamilyPhotos= @[@"damon.jpg",
                     @"img-thing.jpg", @"kanyewest_a.jpg", @"Kendall+Jenner+Celebrity+Social+Media+Pics+P1dOf43hRoSl.jpg",
                     @"khloe-kardashian.jpg",
                     @"Kim-Kardashian-headshot-2-276x300.jpg", @"kris-humphries.jpg", @"Kylie-Jenner-Hair.jpg",
                     @"northwest.jpg", @"scott-disick-300.jpg",@"Screen-Shot-2013-01-28-at-7.49.13-PM.png",@"w630_naya-headshot2"];
    
    kfamilyNames =@[@"Damon", @"Kourtney",@"Kanye", @"Kendall",@"Khloe",@"Kim",@"Kris",@"Kylie",@"North West",@"Scott",@"Cris",@"Naya"];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

//- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
//    [self performSegueWithIdentifier:@"showKardashianDetail" sender:self];
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showKardashianDetail"])
    {
        
//        Album *album;
//        album = [albums objectAtIndex:IndexPaths.row];
//        InfoViewController *destViewController = segue.destinationViewController;
//        destViewController.albumImageName=album.image;
//        destViewController.albumBlurbName=album.blurb;
//        destViewController.albumTitleName=album.title;
//        destViewController.albumYearName=album.year;
        NSIndexPath *indexPaths = [self.collectionView indexPathsForSelectedItems][0];
        DetailViewController *detailViewController = segue.destinationViewController;
        // load the image, to prevent it from being cached we use 'initWithContentsOfFile'
//        NSString *imageNameToLoad = [NSString stringWithFormat:@"%ld_full", (long)selectedIndexPath.row];
//        UIImage *image = [UIImage imageNamed:imageNameToLoad];
        
        detailViewController.kardashianImage = [kfamilyPhotos objectAtIndex:indexPaths.row];
        detailViewController.kardashianTestName = [kfamilyNames objectAtIndex:indexPaths.row];
    }
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([segue.identifier isEqualToString:@"showKardashianDetail"]) {
//        NSIndexPath *selectedIndexPath = [[self.collectionView indexPathsForSelectedItems] objectAtIndex:0];
//        DetailViewController *destViewController = segue.destinationViewController;
//        destViewController.kardashianImage =[UIImage imageNamed:kfamilyPhotos[selectedIndexPath.row]];
//        //        destViewController.kardashianImage = [[indexPath.section] objectAtIndex:indexPath.row];
//        [self.collectionView deselectItemAtIndexPath:selectedIndexPath animated:NO];
//
//}

//NSIndexPath *selectedIndexPath = [[self.collectionView indexPathsForSelectedItems] objectAtIndex:0];
//DetailViewController *destViewController = segue.destinationViewController;
//destViewController.kardashianImage =[UIImage imageNamed:kfamilyPhotos[selectedIndexPath.row]];
////        destViewController.kardashianImage = [[indexPath.section] objectAtIndex:indexPath.row];
//    [self.collectionView deselectItemAtIndexPath:selectedIndexPath animated:NO];
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//}
//}
////}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return kfamilyPhotos.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    KardashiansCollectionViewCell *cell = (KardashiansCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    cell.kfamilyMemberImage.image = [UIImage imageNamed:[kfamilyPhotos objectAtIndex:indexPath.row]];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/


@end