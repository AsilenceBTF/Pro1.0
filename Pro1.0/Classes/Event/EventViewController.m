//
//  EventViewController.m
//  Pro1.0
//
//  Created by asilencebtf on 2022/4/24.
//

#import "EventViewController.h"

@interface EventViewController ()

@property (weak, nonatomic) IBOutlet UIBarButtonItem *eventAddBtn;

@end

@implementation EventViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_eventAddBtn setTintColor:[UIColor whiteColor]];
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
