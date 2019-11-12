//
//  TableViewVC.m
//  LCXUIInit
//
//  Created by leichunxiang on 2019/11/12.
//  Copyright © 2019 lcx. All rights reserved.
//

#import "TableViewVC.h"
#import "TableViewCell.h"

@interface TableViewVC ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, copy) NSArray *dataArr;

@end

@implementation TableViewVC

- (void)dealloc
{
    NSLog(@"%@ dealloc",NSStringFromClass(self.class));
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView = LCXTableViewWithDelegate(self.view, self.view.bounds, [UIColor whiteColor],self);
    [_tableView registerClass:TableViewCell.class forCellReuseIdentifier:@"cellReuseID"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *cellReuseID = @"cellReuseID";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellReuseID];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 120;
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
