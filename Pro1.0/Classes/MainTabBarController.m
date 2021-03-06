//
//  MainTabBarController.m
//  Pro1.0
//
//  Created by asilencebtf on 2022/4/24.
//

#import "MainTabBarController.h"

@interface MainTabBarController ()

@property(nonatomic, strong) NSArray *tabBarItemsTitle;
@property(nonatomic, strong) NSArray *tabBarItemsImage;
@property(nonatomic, strong) NSArray *tabBarItemsSelectedImage;



@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tabBarItemsTitle = [[NSArray alloc] initWithObjects:@"Home", @"Event", @"Todo", @"Note", nil];
    _tabBarItemsImage= [[NSArray alloc] initWithObjects:@"tabbar1", @"tabbar2", @"tabbar3", @"tabbar4", nil];
    _tabBarItemsSelectedImage = [[NSArray alloc] initWithObjects:@"selecttabbar1", @"selecttabbar2", @"selecttabbar3", @"selecttabbar4", nil];
    self.delegate = self;
    [self navigationInitlazition];
    self.tabBar.backgroundImage = [[UIImage alloc] init];
    self.tabBar.shadowImage = [[UIImage alloc] init];
    
}

#pragma mark-NavigationInitlazition
- (void)navigationInitlazition {
    NSArray *a = self.tabBar.items;
    for(int i = 0; i < a.count; ++i) {
        UITabBarItem *item = [a objectAtIndex:i];
        [item setImage:[UIImage imageNamed:_tabBarItemsImage[i]]];
        [item setTitle:@""];
        [item setSelectedImage:[UIImage imageNamed:_tabBarItemsSelectedImage[i]]];
    }
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
