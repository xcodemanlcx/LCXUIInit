//
//  TableViewCell.m
//  LCXUIInit
//
//  Created by leichunxiang on 2019/11/12.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        LCXView(self.contentView, CGRectMake(0, 0, 100, 50), [UIColor redColor]);
        LCXLabel(self.contentView, CGRectMake(110, 0, 100, 50), @"label", [UIFont systemFontOfSize:30], [UIColor blueColor], NSTextAlignmentLeft);
        LCXImageView(self.contentView, CGRectMake(110*2, 0, 100, 50), [UIImage imageNamed:@"testImage"]);
        UIButton *btn = LCXTitleButton(self.contentView, CGRectMake(0, 50, 100, 50), 0, self, @selector(btnAction:), @"button", [UIFont systemFontOfSize:30], [UIColor blackColor], [UIColor grayColor]);
        [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    }
    return self;
}

- (void)btnAction:(UIButton *)sender{
    sender.selected = !sender.selected;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
