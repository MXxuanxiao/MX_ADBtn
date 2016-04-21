//
//  MXASView.m
//  MXAddSub
//
//  Created by maguanxiao on 16/3/31.
//  Copyright © 2016年 MX. All rights reserved.
//

#import "MXASView.h"

@interface MXASView()
@property (nonatomic,strong)NSNumber *min;
@property (nonatomic,strong)NSNumber *max;
@property (nonatomic,strong)UILabel *label;

@end
@implementation MXASView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithFrame:(CGRect)frame minNum:(NSNumber*)min maxNum:(NSNumber *)max {
    _min = min;
    _max = max;
    if (self = [super initWithFrame:frame]) {
        NSInteger w = frame.size.width;
        NSInteger h = frame.size.height;
        UIButton *aBtb = [UIButton buttonWithType:UIButtonTypeCustom];
        aBtb.frame = CGRectMake(w-h, 0, h, h);
        
        UIButton *sbtn = [UIButton buttonWithType:UIButtonTypeCustom];
        sbtn.frame = CGRectMake(0, 0, h, h);;
        [aBtb setImage:[UIImage imageNamed:@"add"] forState:UIControlStateNormal];
        [sbtn setImage:[UIImage imageNamed:@"sub"] forState:UIControlStateNormal];
        [aBtb addTarget:self action:@selector(add:) forControlEvents:UIControlEventTouchUpInside];
        [sbtn addTarget:self action:@selector(sub:) forControlEvents:UIControlEventTouchUpInside];
        _label = [[UILabel alloc] initWithFrame:CGRectMake(h, 0, w-2*h, h)];
        _label.textAlignment = 1;
        _label.text = min.stringValue;
        _label.font = [UIFont systemFontOfSize:16];
        
        
        self.backgroundColor = [UIColor darkGrayColor];
        [self addSubview:aBtb];
        [self addSubview:sbtn];
        [self addSubview:_label];
    }
    return self;
}
- (void)add:(UIButton *)btn {
    if (_label.text.integerValue == _max.integerValue) {
        return;
    }else{
        _label.text = [NSString stringWithFormat:@"%lu",_label.text.integerValue+1];
    }
}
- (void)sub:(UIButton *)btn {
    if (_label.text.integerValue == _min.integerValue) {
        return;
    }else{
        _label.text = [NSString stringWithFormat:@"%lu",_label.text.integerValue-1];
    }
    
}
- (NSString *)getNum {
    return  self.label.text;
}
@end
