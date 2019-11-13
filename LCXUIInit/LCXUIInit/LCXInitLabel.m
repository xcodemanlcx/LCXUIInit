//
//  LCXInitLabel.m
//  LCXUIInit
//
//  Created by leichunxiang on 2019/11/13.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXInitLabel.h"

@implementation LCXInitLabel

UILabel *AddLabel(UIView *superView,CGRect frame,NSString *text,UIFont *font,UIColor *textColor,NSTextAlignment textAlignment){
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    [superView addSubview:label];
    label.text = text;
    label.font = font;
    label.textColor = textColor;
    label.textAlignment = textAlignment;
    return label;
}

@end
