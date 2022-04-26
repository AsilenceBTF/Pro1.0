//
//  NoteViewController.m
//  Pro1.0
//
//  Created by asilencebtf on 2022/4/25.
//

#import "NoteViewController.h"
#import "WaterFallFlowLayout.h"

@interface NoteViewController ()<WaterFallFlowLayoutDelegate> {
    NSArray *items;
}

@property (weak, nonatomic) IBOutlet UICollectionView *noteCollectionView;

@end

@implementation NoteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    items = [[NSArray alloc] initWithObjects:@(150.0), @(270.0), @(300.0), @(140.0), @(250.0), @(200.0), nil];
    WaterFallFlowLayout *waterFall = [[WaterFallFlowLayout alloc] init];
    waterFall.columnMargin = 20;
    waterFall.rowMargin = 10;
    waterFall.delegate = self;
    [_noteCollectionView setDelegate:self];
    [_noteCollectionView setDataSource:self];
    [_noteCollectionView setCollectionViewLayout:waterFall];
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [[UIImage alloc] init];
}

#pragma mark-WaterFlowLayoutDelegate
- (CGFloat)waterFlowLayout:(WaterFallFlowLayout *)WaterFlowLayout heightForWidth:(CGFloat)width andIndexPath:(NSIndexPath *)indexPath {
    return [items[indexPath.row%items.count] floatValue];
}

#pragma mark-UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 15;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"NoteCollectionViewCellIdentifier" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor colorNamed:[NSString stringWithFormat:@"tmp%ld", (indexPath.row )%6 + 1]];
    cell.layer.cornerRadius = 15;
    return cell;
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
