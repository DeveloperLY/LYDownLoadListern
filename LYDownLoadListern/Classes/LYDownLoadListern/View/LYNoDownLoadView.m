//
//  LYNoDownLoadView.m
//  LYDownLoadListern
//
//  Created by LiuY on 2017/11/23.
//  Copyright © 2017年 DeveloperLY. All rights reserved.
//

#import "LYNoDownLoadView.h"

@interface LYNoDownLoadView ()

@property (weak, nonatomic) IBOutlet UIImageView *noDataImageView;

@end

@implementation LYNoDownLoadView

+ (instancetype)noDownLoadView {
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].firstObject;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    self.autoresizingMask = UIViewAutoresizingNone;
}

- (void)setNoDataImage:(UIImage *)noDataImage {
    _noDataImage = noDataImage;
    self.noDataImageView.image = noDataImage;
}

#pragma mark - Event/Touch
- (IBAction)HandleButtonClick:(UIButton *)sender {
    if (self.buttonClickBlock) {
        self.buttonClickBlock();
    }
}

@end
