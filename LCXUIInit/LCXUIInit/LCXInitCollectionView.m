//
//  LCXInitCollectionView.m
//  LCXUIInit
//
//  Created by leichunxiang on 2019/11/13.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXInitCollectionView.h"

@implementation LCXInitCollectionView

UICollectionView *AddCollectionView(UIView *superView, CGRect frame, UICollectionViewLayout *layout,id doubleDelegate){
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:layout];
    [superView addSubview:collectionView];
    //base settings
    collectionView.backgroundColor = [UIColor whiteColor];
    collectionView.showsHorizontalScrollIndicator = NO;
    collectionView.showsVerticalScrollIndicator = NO;
    collectionView.dataSource = doubleDelegate;
    collectionView.delegate = doubleDelegate;
    return collectionView;
}

@end
