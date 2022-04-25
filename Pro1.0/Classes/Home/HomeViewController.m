//
//  HomeViewController.m
//  Pro1.0
//
//  Created by asilencebtf on 2022/4/24.
//

#import "HomeViewController.h"
#import "EventSectionViewController.h"
#import "TodoSectionViewController.h"
#import "NoteSectionViewController.h"
#import "UIFont+Poppins.h"



@interface HomeViewController ()

@property (weak, nonatomic) IBOutlet UINavigationItem *homeNavigationItem;

@property (weak, nonatomic) IBOutlet UILabel *eventLabel;
@property (weak, nonatomic) IBOutlet UILabel *eventTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *todoLabel;
@property (weak, nonatomic) IBOutlet UILabel *todoTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;
@property (weak, nonatomic) IBOutlet UILabel *noteTitleLabel;
@property (weak, nonatomic) IBOutlet UICollectionView *eventSectionView;
@property (weak, nonatomic) IBOutlet UICollectionView *todoSectionView;
@property (weak, nonatomic) IBOutlet UICollectionView *noteSectionView;

@property(strong, nonatomic) EventSectionViewController *eventSectionVC;
@property(strong, nonatomic) TodoSectionViewController *todoSectionVC;
@property(strong, nonatomic) NoteSectionViewController *noteSectionVC;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    _eventLabel.font = [UIFont poppinsSemiBoldFontOfSize:20];
    _eventLabel.text = @"Calendar Events";
    _eventLabel.textColor = [UIColor colorNamed:@"Color1"];
    _eventTitleLabel.font = [UIFont poppinsRegularFontOfSize:14.38];
    _eventTitleLabel.textColor = [UIColor colorNamed:@"Color6"];
    
    _todoLabel.font = [UIFont poppinsSemiBoldFontOfSize:20];
    _todoLabel.text = @"To Do Tasks";
    _todoLabel.textColor = [UIColor colorNamed:@"Color3"];
    _todoTitleLabel.font = [UIFont poppinsRegularFontOfSize:14.38];
    _todoTitleLabel.textColor = [UIColor colorNamed:@"Color6"];
    
    _noteLabel.font = [UIFont poppinsSemiBoldFontOfSize:20];
    _noteLabel.text = @"Quick Notes";
    _noteLabel.textColor = [UIColor colorNamed:@"Color5"];
    _noteTitleLabel.font = [UIFont poppinsRegularFontOfSize:14.38];
    _noteTitleLabel.textColor = [UIColor colorNamed:@"Color6"];
    
    
    _eventSectionVC = [[EventSectionViewController alloc] init];
    [_eventSectionView setDelegate:_eventSectionVC];
    [_eventSectionView setDataSource:_eventSectionVC];
    
    _todoSectionVC = [[TodoSectionViewController alloc] init];
    [_todoSectionView setDelegate:_todoSectionVC];
    [_todoSectionView setDataSource:_todoSectionVC];
    
    _noteSectionVC = [[NoteSectionViewController alloc] init];
    [_noteSectionView setDelegate:_noteSectionVC];
    [_noteSectionView setDataSource:_noteSectionVC];
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
