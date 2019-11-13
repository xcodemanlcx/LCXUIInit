//
//  LCXInitLabel.h
//  LCXUIInit
//
//  Created by leichunxiang on 2019/11/13.
//  Copyright © 2019 lcx. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LCXInitLabel : NSObject

UILabel *AddLabel(UIView *superView,CGRect frame,NSString *text,UIFont *font,UIColor *textColor,NSTextAlignment textAlignment);

@end

NS_ASSUME_NONNULL_END
