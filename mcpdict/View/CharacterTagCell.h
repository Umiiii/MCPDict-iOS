//
//  CharacterTagCell.h
//  mcpdict
//
//  Created by Cirno on 2017/9/3.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UmiHeader.h"
@interface CharacterTagCell : UICollectionViewCell
@property (strong, nonatomic) UILabel *lang;     //标签
@property (strong, nonatomic) UILabel *detail;   //内容
-(void)setLangText:(NSString*)lang;
-(void)setDetailText:(NSString *)detail;
@end
