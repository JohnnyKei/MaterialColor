//
//  ColorCell.m
//  MaterialColor
//
//  Created by kei on 2014/12/23.
//  Copyright (c) 2014年 kei. All rights reserved.
//

#import "ColorCell.h"

@implementation ColorCell

- (id)init{
    self = [super init];
    if (self) {
        NSLog(@"%s",__func__);

        
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"%s",__func__);
        if (self.titleLabel) {
            [self.titleLabel removeFromSuperview];
        }else{
            [self initilizeTitleLabel];
        }

    }
    return self;
}







- (void)prepareForReuse{
    [super prepareForReuse];
    if (self.titleLabel) {
        [self.titleLabel removeFromSuperview];
        [self initilizeTitleLabel];
    }else{
        [self initilizeTitleLabel];

    }
}

- (void)initilizeTitleLabel{
    self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(5, 5, 100, 30)];
    self.titleLabel.font = [UIFont systemFontOfSize:12];
    self.titleLabel.numberOfLines = 2;
    self.titleLabel.textColor = [UIColor whiteColor];
    [self.contentView addSubview:self.titleLabel];
}


@end
