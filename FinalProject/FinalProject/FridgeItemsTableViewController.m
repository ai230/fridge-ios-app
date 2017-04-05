//
//  FridgeItemsTableViewController.m
//  FinalProject
//
//  Created by AiYamamoto on 2017-03-27.
//  Copyright © 2017 CICCCa. All rights reserved.
//

#import "FridgeItemsTableViewController.h"

@interface FridgeItemsTableViewController ()

@end

@implementation FridgeItemsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.fridgeItemsTableView.delegate = self;
    self.fridgeItemsTableView.dataSource =self;
    
    self.productArray = [[NSMutableArray<Product*> alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.productArray.count;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FridgeItemsTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"FridgeItemsTableViewID"];
    
    if(!cell)
    {
        cell = [[FridgeItemsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FridgeItemsTableViewID"];
    }
    Product * product = [self.productArray objectAtIndex:indexPath.row];
    cell.fridgeItemNameLabel.text = product.productName;
    return cell;
}
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

-(void)fridgeListDidSelect
{
    
    //Check!
    //NSMutableArray<Product*>* productsArray = [[NSMutableArray<Product*> alloc]init];
    self.productArray = [self.fridgeItemDelegate fridgeItemsDidCreate];
    [self.fridgeItemsTableView reloadData];
}

@end
