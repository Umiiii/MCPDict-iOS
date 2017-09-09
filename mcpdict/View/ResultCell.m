//
//  ResultCell.m
//  mcpdict
//
//  Created by Cirno on 2017/9/3.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "ResultCell.h"
#import "UmiHeader.h"
@implementation ResultCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.resultView.delegate = self;
    self.resultView.dataSource = self;
    self.resultView.userInteractionEnabled = NO;
       self.resultView.layoutMargins = UIEdgeInsetsMake(0, 0, 0, 0);

    [self.resultView registerClass:[CharacterTagCell class] forCellWithReuseIdentifier:@"cell"];
    _array =  [[NSArray alloc]initWithObjects:@"kux(見流厚一開 上聲25有)\nkux(見流厚一開 上聲25有)",@"gou123123123",@"gau2,gik1",@"keu5",@"koo2",nil];
    // Initialization code
}


- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    CharacterTagCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    [cell setDetailText:_array[indexPath.row]];
    [cell setLangText:@"哇"];
    return cell;
}

-(CGSize)calcSize:(NSString*)str{
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:17],
                           NSFontAttributeName,nil];
    CGSize  actualSize =[str boundingRectWithSize:CGSizeMake(WIDTH-50, MAXFLOAT)
                                                 options:NSStringDrawingUsesLineFragmentOrigin
                                              attributes:tdic
                                                 context:nil].size;

    return actualSize;
}
- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}
- (CGSize) collectionView:(UICollectionView *)collectionView
                   layout:(UICollectionViewLayout *)collectionViewLayout
   sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize actualSize = [self calcSize:_array[indexPath.row]];
    actualSize.width = actualSize.width+20;
    return actualSize;
}
-(CGSize)allSizeHeight{
    CGSize totalSize = CGSizeZero;
    for (NSString* str in _array){
        CGSize itemSize = [self calcSize:str];
        totalSize.width +=itemSize.width;
        totalSize.height+=itemSize.height;
    }
    return totalSize;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    return 0.0f;
}

@end
