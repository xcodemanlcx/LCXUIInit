//
//  LCXUIInit+TableView.h
//  LCXApp
//
//  Created by leichunxiang on 2019/11/8.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "LCXUIInit.h"

NS_ASSUME_NONNULL_BEGIN

@interface LCXUIInit (TableView)

UITableView *LCXTableView(UIView *superView, CGRect frame, UIColor *backgroundColor);

UITableView *LCXTableViewWithDelegate(UIView *superView, CGRect frame, UIColor *backgroundColor,id doubleDelegate);

@end

NS_ASSUME_NONNULL_END
