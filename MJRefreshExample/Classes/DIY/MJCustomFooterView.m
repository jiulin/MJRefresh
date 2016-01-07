//
//  MJCustomFooterView.m
//  MJRefreshExample
//
//  Created by Vicky on 15/12/31.
//  Copyright © 2015年 小码哥. All rights reserved.
//

#import "MJCustomFooterView.h"

@implementation MJCustomFooterView

- (void)prepare{
    [super prepare];
    // 设置文字
    [self setTitle:@"Loading more ..." forState:MJRefreshStateIdle];
    [self setTitle:@"Loading" forState:MJRefreshStateRefreshing];
    [self setTitle:@"follow your heart, go further..." forState:MJRefreshStateNoMoreData];
    self.automaticallyChangeAlpha = 0.5;
    // 设置字体
    self.stateLabel.font = [UIFont systemFontOfSize:17];
    
    // 设置颜色
    self.stateLabel.textColor = [UIColor colorWithRed:195.0f/255.0f green:195.0f/255.0f blue:195.0f/255.0f alpha:1.000];

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
