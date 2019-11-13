//
//  LCXInitImageView.h
//  LCXUIInit
//
//  Created by leichunxiang on 2019/11/13.
//  Copyright © 2019 lcx. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LCXInitImageView : NSObject

UIImageView *AddImageView(UIView *superView, CGRect frame, UIImage *_Nullable image);

UIImageView *AddImageViewWithTap(UIView *superView, CGRect frame, UIImage *_Nullable image,id target,SEL sel);

@end

NS_ASSUME_NONNULL_END
