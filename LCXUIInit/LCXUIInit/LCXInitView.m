//
//  LCXInitView.m
//  LCXUIInit
//
//  Created by leichunxiang on 2019/11/13.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXInitView.h"

@implementation LCXInitView

UIView *AddView(UIView *superView, CGRect frame, UIColor *backgroundColor){
    UIView *view = [[UIView alloc] initWithFrame:frame];
    [superView addSubview:view];
    view.backgroundColor = backgroundColor;
    return view;
}

@end
