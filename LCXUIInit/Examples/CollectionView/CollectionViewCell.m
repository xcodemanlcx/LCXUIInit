//
//  CollectionViewCell.m
//  LCXUIInit
//
//  Created by leichunxiang on 2019/11/13.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "CollectionViewCell.h"
#import "LCXInitLabel.h"

@implementation CollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.contentView.backgroundColor = [UIColor orangeColor];
        AddLabel(self.contentView, CGRectMake(20, 20, 100, 60), @"Label", [UIFont systemFontOfSize:40], [UIColor whiteColor], NSTextAlignmentCenter);
    }
    return self;
}

@end
