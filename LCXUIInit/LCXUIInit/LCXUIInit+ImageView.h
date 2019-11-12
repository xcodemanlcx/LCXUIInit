//
//  LCXUIInit+ImageView.h
//  LCXApp
//
//  Created by leichunxiang on 2019/11/8.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXUIInit.h"

NS_ASSUME_NONNULL_BEGIN

@interface LCXUIInit (ImageView)

UIImageView *LCXImageView(UIView *superView, CGRect frame, UIImage *_Nullable image);

UIImageView *LCXImageViewWithTap(UIView *superView, CGRect frame, UIImage *_Nullable image,id target,SEL sel);

@end

NS_ASSUME_NONNULL_END
