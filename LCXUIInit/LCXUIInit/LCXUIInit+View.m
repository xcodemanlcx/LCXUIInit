//
//  LCXUIInit+View.m
//  LCXApp
//
//  Created by leichunxiang on 2019/11/8.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXUIInit+View.h"

@implementation LCXUIInit (View)

UIView *LCXView(UIView *superView, CGRect frame, UIColor *backgroundColor){
    UIView *view = [[UIView alloc] initWithFrame:frame];
    [superView addSubview:view];
    view.backgroundColor = backgroundColor;
    return view;
}

@end
