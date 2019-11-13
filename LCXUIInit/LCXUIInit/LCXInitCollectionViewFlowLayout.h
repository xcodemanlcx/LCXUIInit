//
//  LCXInitCollectionViewFlowLayout.h
//  LCXUIInit
//
//  Created by leichunxiang on 2019/11/13.
//  Copyright © 2019 lcx. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LCXInitCollectionViewFlowLayout : NSObject

UICollectionViewFlowLayout *AddCollectionViewFlowLayout(BOOL isScrollDirectionHorizontal,CGFloat lineSpacing,CGFloat interitemSpacing,CGSize itemSize,UIEdgeInsets insets);

@end

NS_ASSUME_NONNULL_END
