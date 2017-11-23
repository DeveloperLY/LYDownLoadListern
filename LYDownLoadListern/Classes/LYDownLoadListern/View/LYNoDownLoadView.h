//
//  LYNoDownLoadView.h
//  LYDownLoadListern
//
//  Created by LiuY on 2017/11/23.
//  Copyright © 2017年 DeveloperLY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYNoDownLoadView : UIView

/** 显示图片 */
@property (nonatomic, strong) UIImage *noDataImage;

/** 按钮点击事件block */
@property (nonatomic, copy) dispatch_block_t buttonClickBlock;


+ (instancetype)noDownLoadView;

@end
