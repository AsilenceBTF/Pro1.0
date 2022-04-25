//
//  TodoSectionViewController.m
//  Pro1.0
//
//  Created by asilencebtf on 2022/4/25.
//

#import "TodoSectionViewController.h"
#import "UIFont+Poppins.h"

@interface TodoSectionViewController ()

@end

@implementation TodoSectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark-UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 15;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"TodoSectionCellIdentifier" forIndexPath:indexPath];
    UIView *contextView = [[UIView alloc] init];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 10, 140, 30)];
    UIButton *radioBtn = [[UIButton alloc] initWithFrame:CGRectMake(15, 10, 30, 30)];
    titleLabel.text = @"Shopping List";
    titleLabel.font = [UIFont poppinsSemiBoldFontOfSize:11.72];
    [radioBtn setImage:[UIImage imageNamed:@"radio"] forState:UIControlStateNormal];
    [contextView addSubview:titleLabel];
    [contextView addSubview:radioBtn];
    cell.layer.cornerRadius = 20;
    cell.backgroundView = contextView;
    return cell;
}


#pragma mark - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(300, 50);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(0, 0, 10, 10);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 10;
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
