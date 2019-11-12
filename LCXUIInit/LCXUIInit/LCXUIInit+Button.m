//
//  LCXUIInit+Button.m
//  LCXApp
//
//  Created by leichunxiang on 2019/11/8.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXUIInit+Button.h"

@implementation LCXUIInit (Button)

UIButton *LCXButton(UIView *superView, CGRect frame, NSInteger tag, id target, SEL action, UIButtonType type)
{
    UIButton *btn = [UIButton buttonWithType:type];
    btn.frame = frame;
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn setTag:tag];
    btn.backgroundColor = [UIColor clearColor];
    [superView addSubview:btn];
    return btn;
}

UIButton *LCXImageButton(UIView *superView, CGRect frame, NSInteger tag, id target, SEL action, UIImage *img, UIImage * _Nullable imgH)
{
    UIButton *btn = LCXButton(superView, frame, tag, target, action, UIButtonTypeCustom);
    if (img)
        [btn setBackgroundImage:img forState:UIControlStateNormal];
    if (imgH)
        [btn setBackgroundImage:imgH forState:UIControlStateHighlighted];
    return btn;
}

UIButton *LCXTitleButton(UIView *superView, CGRect frame, NSInteger tag, id target, SEL action, NSString *title,UIFont *font, UIColor *color,  UIColor * _Nullable colorH){
    UIButton *btn = LCXButton(superView, frame, tag, target, action, UIButtonTypeCustom);
    if (title)
        [btn setTitle:title forState:UIControlStateNormal];
    if (font)
        btn.titleLabel.font = font;
    if (color)
        [btn setTitleColor:color forState:UIControlStateNormal];
    if (colorH)
        [btn setTitleColor:colorH forState:UIControlStateHighlighted];

    return btn;
}

UIButton *LCXTitleButtonWithImage(UIView *superView, CGRect frame, NSInteger tag, id target, SEL action, NSString *title, UIFont *font, UIColor *color,  UIColor * _Nullable colorH,UIImage *img, UIImage * _Nullable imgH){
    UIButton *btn = LCXTitleButton(superView, frame, tag, target, action,title,font, color, colorH);
    if (img)
        [btn setBackgroundImage:img forState:UIControlStateNormal];
    if (imgH)
        [btn setBackgroundImage:imgH forState:UIControlStateHighlighted];
    
    return btn;
}
@end
