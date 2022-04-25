//
//  EventSectionViewController.m
//  Pro1.0
//
//  Created by asilencebtf on 2022/4/25.
//

#import "EventSectionViewController.h"
#import "UIFont+Poppins.h"

@interface EventSectionViewController ()

@end

@implementation EventSectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 15;
}


- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"EventSectionCellIdentifier" forIndexPath:indexPath];
    cell.layer.cornerRadius = 15;
    UIView *contentView = [[UIView alloc] init];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, -5, 120, 50)];
    UILabel *dateLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 15, 120, 50)];
    titleLabel.text = @"Daily Meeting";
    titleLabel.font = [UIFont poppinsSemiBoldFontOfSize:14];
    titleLabel.textColor = [UIColor colorNamed:@"Color7"];
    dateLabel.text = @"12:00";
    dateLabel.font = [UIFont poppinsRegularFontOfSize:12];
    dateLabel.textColor = [UIColor colorNamed:@"Color7"];
    [contentView addSubview:titleLabel];
    [contentView addSubview:dateLabel];
    cell.backgroundView = contentView;
    return cell;
}


#pragma mark - UICollectionViewDelegateFlowLayout
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(155, 62);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(15, 0, 0, 15);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 18;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
