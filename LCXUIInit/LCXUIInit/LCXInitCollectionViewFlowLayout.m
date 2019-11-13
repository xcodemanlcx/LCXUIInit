//
//  LCXInitCollectionViewFlowLayout.m
//  LCXUIInit
//
//  Created by leichunxiang on 2019/11/13.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXInitCollectionViewFlowLayout.h"

@implementation LCXInitCollectionViewFlowLayout

UICollectionViewFlowLayout *AddCollectionViewFlowLayout(BOOL isScrollDirectionHorizontal,CGFloat lineSpacing,CGFloat interitemSpacing,CGSize itemSize,UIEdgeInsets insets){
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    if (isScrollDirectionHorizontal) {
        flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    }
    // items横向的间距
    flowLayout.minimumLineSpacing = lineSpacing;
    // items纵向的间距
    flowLayout.minimumInteritemSpacing = interitemSpacing;
    // 所有item的size
    flowLayout.itemSize = itemSize;
    // 定义每个UICollectionView分区外边距（上左下右）：
    flowLayout.sectionInset = insets;
    return flowLayout;
}

@end
