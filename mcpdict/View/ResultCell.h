//
//  ResultCell.h
//  mcpdict
//
//  Created by Cirno on 2017/9/3.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CharacterTagCell.h"
@interface ResultCell : UITableViewCell<UICollectionViewDelegate,UICollectionViewDataSource>
@property (strong, nonatomic) IBOutlet UILabel *character;
@property (strong, nonatomic) IBOutlet UILabel *unicode;
@property (strong, nonatomic) NSArray* array;
@property (strong, nonatomic) IBOutlet UICollectionView *resultView;
@property (nonatomic) CGFloat actualHeight;
-(CGSize)allSizeHeight;
@end
