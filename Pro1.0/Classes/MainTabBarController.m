//
//  MainTabBarController.m
//  Pro1.0
//
//  Created by asilencebtf on 2022/4/24.
//

#import "MainTabBarController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.tabBar setTintColor:[UIColor whiteColor]];
    [self navigationInitlazition];
}



- (void)setTabBarItem:(UITabBarItem *)tabBarItem {
    
}


#pragma mark-NavigationInitlazition

- (void)navigationInitlazition {
    NSArray *a = [self viewControllers];
    for(int i = 0; i < a.count; ++i) {
        UINavigationController *b = a[i];
        b.tabBarItem.image = [UIImage imageNamed:[NSString stringWithFormat:@"tabbar%d", i + 1]];
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
