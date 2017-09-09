//
//  CharacterTagCell.m
//  mcpdict
//
//  Created by Cirno on 2017/9/3.
//  Copyright © 2017年 com.umi.mcpdict. All rights reserved.
//

#import "CharacterTagCell.h"

@implementation CharacterTagCell

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self){
        _lang = [[UILabel alloc]initWithFrame:CGRectMake(1, 1, 15, 15)];
        _lang.layer.cornerRadius = 2;
        _lang.layer.borderColor = [UIColor blackColor].CGColor;
        _lang.layer.borderWidth = 1;
        _lang.textAlignment =NSTextAlignmentCenter;
        _lang.font = [UIFont systemFontOfSize:13.0f];
        _detail = [[UILabel alloc]initWithFrame:CGRectMake(17, 1, 50, 15)];
        _detail.numberOfLines = 0;
        _detail.lineBreakMode = NSLineBreakByWordWrapping;
        _lang.layer.borderColor = [UIColor blackColor].CGColor;
        [self addSubview:_lang];
        [self addSubview:_detail];
    }
    return self;
}
-(CGSize)calcSize:(UILabel*)label{
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:17],
                           NSFontAttributeName,nil];
    CGSize  actualSize =[label.text boundingRectWithSize:CGSizeMake(WIDTH-50, MAXFLOAT)
                                                 options:NSStringDrawingUsesLineFragmentOrigin
                                              attributes:tdic
                                                 context:nil].size;

    return actualSize;
}
-(void)setLangText:(NSString*)lang{
    self.lang.text = lang;
    CGSize adjustSize = [self calcSize:self.lang];
    self.lang.frame = CGRectMake(1, 1, adjustSize.width, adjustSize.height);
}
-(void)setDetailText:(NSString *)detail{
    self.detail.text = detail;
    CGSize adjustSize = [self calcSize:self.detail];
    self.detail.frame = CGRectMake(20, 1, adjustSize.width, adjustSize.height);
}
@end
