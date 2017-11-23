//
//  LYDownLoadListernMainController.m
//  LYDownLoadListern
//
//  Created by LiuY on 2017/11/23.
//  Copyright © 2017年 DeveloperLY. All rights reserved.
//

#import "LYDownLoadListernMainController.h"
#import <LYSegmentBar/LYSegmentBarViewController.h>

#import "LYDownLoadingTableViewController.h"
#import "LYDownLoadedVoiceTableViewController.h"
#import "LYAlbumTableViewController.h"

@interface LYDownLoadListernMainController ()

@property (nonatomic, weak) LYSegmentBarViewController *segmentBarViewController;

@end

@implementation LYDownLoadListernMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpUI];
    
    [self setUpDataSource];
}

- (void)setUpUI {
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"navigationbar_bg_64"] forBarMetrics:UIBarMetricsDefault];
    self.segmentBarViewController.segmentBar.frame = CGRectMake(0, 0, 300.0f, 44.0f);
    self.navigationItem.titleView = self.segmentBarViewController.segmentBar;
    
    self.segmentBarViewController.view.frame = CGRectMake(0, 60.0f, self.view.frame.size.width, self.view.frame.size.height - 60.0f);
    [self.view addSubview:self.segmentBarViewController.view];
}

- (void)setUpDataSource {
    LYDownLoadingTableViewController *downLoadingVC = [[LYDownLoadingTableViewController alloc] init];
    LYDownLoadedVoiceTableViewController *downLoadedVoiceVC = [[LYDownLoadedVoiceTableViewController alloc] init];
    LYAlbumTableViewController *albumVC = [[LYAlbumTableViewController alloc] init];
    [self.segmentBarViewController setUpWithTitleArray:@[@"专辑", @"声音", @"下载中"] childViewControllers:@[albumVC, downLoadedVoiceVC, downLoadingVC]];
    
    [self.segmentBarViewController.segmentBar updateWithConfig:^(LYSegmentBarConfig *config) {
        config.segmentBarBackColor = [UIColor whiteColor];
    }];
    
}

#pragma mark - Getter
- (LYSegmentBarViewController *)segmentBarViewController {
    if (!_segmentBarViewController) {
        LYSegmentBarViewController *segmentBarViewController = [[LYSegmentBarViewController alloc] init];
        [self addChildViewController:segmentBarViewController];
        _segmentBarViewController = segmentBarViewController;
    }
    return _segmentBarViewController;
}

@end
