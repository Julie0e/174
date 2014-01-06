//
//  ViewController.m
//  174
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#define CELL_ID @"CELL_ID"

@interface ViewController () <UITableViewDataSource, UITabBarDelegate>

@end

@implementation ViewController
{
    NSArray *data;
}

// 셀 선택시 로그로 확인
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Select Row : %d", indexPath.row);
}

// 악세서리 버튼 클릭시
- (void)tableView:(UITableView *) tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Accessory Button tapped : %d", indexPath.row);
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [data count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_ID];
    if (indexPath.row == 0) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else if (indexPath.row ==1){
        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    }
    else if (indexPath.row == 2){
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    cell.textLabel.text = data[indexPath.row];
    
    return cell;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	data = @[@"a", @"b", @"c", @"d", @"e", @"f", @"g", @"h"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
