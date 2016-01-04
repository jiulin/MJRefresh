//
//  MJActivityIndicatorView.h
//  MJRefreshExample
//
//  Created by Vicky on 16/1/4.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MJActivityIndicatorView : UIView
/**
 *  菊花的颜色
 */
@property (nonatomic, copy) UIColor *tintColor;

/**
 *  外部设置滑动距离
 */
@property (nonatomic, assign) CGFloat timeOffset;  // 0.0 ~ 1.0



/**
 *  开始动画加载
 */
- (void)beginRefreshing;

/**
 *  结束动画加载
 */
- (void)endRefreshing;
@end
