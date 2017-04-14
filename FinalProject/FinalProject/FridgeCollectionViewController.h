//
//  FridgeCollectionViewController.h
//  FinalProject
//
//  Created by AiYamamoto on 2017-03-30.
//  Copyright © 2017 CICCCa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FridgeCollectionViewCell.h"
#import "Product.h"
#import "HeaderCollectionReusableView.h"
#import "AddProductViewController.h"
#import "Fridge.h"
#import "MyTabBarViewController.h"

#import "UIView+MGBadgeView.h"

@protocol FridgeItemCVDelegate

-(NSMutableArray<Product*>*)fridgeItemCVDidCreate;

@end

@interface FridgeCollectionViewController : UICollectionViewController<UICollectionViewDelegate,UICollectionViewDataSource,AddProductDelegate,UIGestureRecognizerDelegate>

@property (strong, nonatomic) IBOutlet UICollectionView *fridgeCollectionView;

@property(weak,nonatomic)id<FridgeItemCVDelegate> fridgeItemCVDelegate;
@property (strong, nonatomic)Fridge* fridgeInCV;

@property (strong,nonatomic) NSMutableArray<Product*>* productArray;
@property (strong,nonatomic) NSMutableArray* foodImageArray;
-(void)fridgeCVDidSelect;

@end
