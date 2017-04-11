//
//  ShoppingListViewController.h
//  FinalProject
//
//  Created by Sena Funakubo on 2017-04-10.
//  Copyright © 2017 CICCCa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShoppingListTableViewCell.h"
#import "addShoppingListViewController.h"

@protocol shoppingListDelegate

-(float)thePriceOfProducts;

@end

@interface ShoppingListViewController : UIViewController<addSHPDelegate,UIAlertViewDelegate,UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) id<shoppingListDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITableView *shoppingListTableView;
@property (nonatomic) NSMutableArray *items;

//-(void)caculatePrice;

@end
