//
//  ViewController.m
//  MXAddSub
//
//  Created by maguanxiao on 16/3/31.
//  Copyright © 2016年 MX. All rights reserved.
//

#import "ViewController.h"
#import "MXASView.h"
@interface ViewController ()
@property (nonatomic,strong)MXASView *ADview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor cyanColor];
    // Do any additional setup after loading the view, typically from a nib.
    _ADview =[[MXASView alloc] initWithFrame:CGRectMake(100, 100, 120, 40) minNum:@1 maxNum:@15];
    [self.view addSubview:_ADview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btn:(id)sender {
    NSLog(@"%@" ,[_ADview getNum]);
}

@end
