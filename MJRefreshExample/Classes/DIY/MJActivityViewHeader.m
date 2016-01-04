//
//  MJActivityViewHeader.m
//  MJRefreshExample
//
//  Created by Vicky on 16/1/4.
//  Copyright © 2016年 小码哥. All rights reserved.
//

#import "MJActivityViewHeader.h"

#import "MJActivityIndicatorView.h"
@interface MJActivityViewHeader ()
@property (strong, nonatomic) MJActivityIndicatorView *indicateview;
@end

@implementation MJActivityViewHeader

- (void)startBeginAnimation{
    [_indicateview beginRefreshing];
}

- (void)prepare{
    [super prepare];
    
    CGRect mainScreenRect = [UIScreen mainScreen].bounds;
    
    CGFloat kscreenWidth = mainScreenRect.size.width;

    self.indicateview = [[MJActivityIndicatorView alloc] initWithFrame:CGRectMake(kscreenWidth/2.0f, self.bounds.size.height/2.0f+5, 1, 3)];
    [self addSubview:_indicateview];
    
    
}

#pragma mark 监听scrollView的contentOffset改变
- (void)scrollViewContentOffsetDidChange:(NSDictionary *)change
{
    [super scrollViewContentOffsetDidChange:change];
}

#pragma mark 监听scrollView的contentSize改变
- (void)scrollViewContentSizeDidChange:(NSDictionary *)change
{
    [super scrollViewContentSizeDidChange:change];
    
}

#pragma mark 监听scrollView的拖拽状态改变
- (void)scrollViewPanStateDidChange:(NSDictionary *)change
{
    [super scrollViewPanStateDidChange:change];
}

#pragma mark 监听控件的刷新状态
- (void)setState:(MJRefreshState)state
{
    MJRefreshCheckState;
    
    switch (state) {
        case MJRefreshStateIdle:
            [self.indicateview endRefreshing];
            break;
            
        case MJRefreshStatePulling:

            
            break;
            
        case MJRefreshStateRefreshing:
            [self.indicateview beginRefreshing];
            
            break;
            
        case MJRefreshStateWillRefresh:
            [self.indicateview beginRefreshing];
            
            break;
            
        case MJRefreshStateNoMoreData:
            [self.indicateview endRefreshing];
            
            break;
            
        default:
            break;
    }
}

#pragma mark 监听拖拽比例（控件被拖出来的比例）
- (void)setPullingPercent:(CGFloat)pullingPercent
{
    NSLog(@"pullingPercent == %f",pullingPercent);
    [super setPullingPercent:pullingPercent];
    self.indicateview.timeOffset = pullingPercent;
    
}

@end
