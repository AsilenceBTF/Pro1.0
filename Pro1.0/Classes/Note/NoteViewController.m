//
//  NoteViewController.m
//  Pro1.0
//
//  Created by asilencebtf on 2022/4/25.
//

#import "NoteViewController.h"

@interface NoteViewController () {
    NSArray *items;
}

@property (weak, nonatomic) IBOutlet UICollectionView *noteCollectionView;

@end

@implementation NoteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    items = [[NSArray alloc] initWithObjects:@50, @70, @100, @40, @150, @200, nil];
    [_noteCollectionView setDelegate:self];
    [_noteCollectionView setDataSource:self];
    NSLog(@"%f", _noteCollectionView.frame.size.width);
}


#pragma mark-UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return items.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"NoteCollectionViewCellIdentifier" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor colorNamed:[NSString stringWithFormat:@"Color%ld", indexPath.row%10]];
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
