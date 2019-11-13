//
//  CollectionViewVC.m
//  LCXUIInit
//
//  Created by leichunxiang on 2019/11/13.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "CollectionViewVC.h"
#import "LCXInitCollectionView.h"
#import "LCXInitCollectionViewFlowLayout.h"
#import "CollectionViewCell.h"

#define UIScreen_Width [UIScreen mainScreen].bounds.size.width

@interface CollectionViewVC ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation CollectionViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UICollectionViewFlowLayout *flowLayout = AddCollectionViewFlowLayout(NO, 20, 20, CGSizeMake((UIScreen_Width-10*2-20)/2.f, 100), UIEdgeInsetsMake(10, 10, 10, 10));
    UICollectionView *collectionView = AddCollectionView(self.view, self.view.bounds, flowLayout, self);
    [collectionView registerClass:CollectionViewCell.class forCellWithReuseIdentifier:@"CellID"];
}

#pragma mark - UICollectionViewDelegate,UICollectionViewDataSource

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 20;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identify = @"CellID";
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identify forIndexPath:indexPath];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"didSelectItemAtIndexPath %ld",indexPath.row);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
