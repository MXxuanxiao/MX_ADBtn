//
//  MXASView.h
//  MXAddSub
//
//  Created by maguanxiao on 16/3/31.
//  Copyright © 2016年 MX. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MXASView : UIView
-(instancetype)initWithFrame:(CGRect)frame minNum:(NSNumber*)min maxNum:(NSNumber *)max;
- (NSString *)getNum;
@end
