//
//  ViewController.m
//  FireWork
//
//  Created by CSaT_SunTony on 16/4/29.
//  Copyright © 2016年 李新波. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *containerView;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    containerView = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 -  10 , self.view.frame.size.height/2 -10, 20, 20)];
    [self.view addSubview:containerView];
    
    CAEmitterLayer *emitter = [CAEmitterLayer layer];
    emitter.frame    =   containerView.bounds;
    [containerView.layer addSublayer:emitter];
    emitter.renderMode = kCAEmitterLayerAdditive;
    emitter.emitterPosition = CGPointMake(emitter.frame.size.width/2, emitter.frame.size.height/2);
    CAEmitterCell *cell = [[CAEmitterCell alloc] init];
    cell.contents = (__bridge id)[UIImage imageNamed:@"1.png"].CGImage;
    cell.birthRate = 50.0;
    cell.lifetime = 5;
    cell.color = [UIColor colorWithRed:1 green:0.5 blue:0.1 alpha:1].CGColor;
    cell.alphaSpeed = -0.4;
    cell.velocity = 100;
    cell.velocityRange = 50;
    cell.emissionRange = M_PI*6;
    emitter.emitterCells = @[cell];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
