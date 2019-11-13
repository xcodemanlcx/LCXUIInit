//
//  LCXInitCollectionView.h
//  LCXUIInit
//
//  Created by leichunxiang on 2019/11/13.
//  Copyright © 2019 lcx. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LCXInitCollectionView : NSObject

UICollectionView *AddCollectionView(UIView *superView, CGRect frame, UICollectionViewLayout *layout,id doubleDelegate);
@end

NS_ASSUME_NONNULL_END
