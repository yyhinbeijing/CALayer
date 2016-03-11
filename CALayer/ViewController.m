//
//  ViewController.m
//  CALayer
//
//  Created by 阳永辉 on 16/3/8.
//  Copyright © 2016年 HuiDe. All rights reserved.
//

#import "ViewController.h"
#define PHOTO_HEIGHT 150
#define WIDTH 50
@interface ViewController () {
    CALayer *_layer;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
                                    //1.01
//    CALayer *layer = [[CALayer alloc] init];
//    layer.bounds = CGRectMake(0, 0, PHOTO_HEIGHT, PHOTO_HEIGHT);
//    layer.position = CGPointMake(160, 200);
//    layer.backgroundColor = [UIColor redColor].CGColor;
//    layer.cornerRadius = PHOTO_HEIGHT/2;
//    layer.masksToBounds = NO;
//    layer.borderColor = [UIColor blackColor].CGColor;
//    layer.borderWidth = 20;
//    layer.delegate = self;
//    [self.view.layer addSublayer:layer];
//    [layer setNeedsDisplay];
                                //    1.02
//    CGSize size = [UIScreen mainScreen].bounds.size;
//    
//    CALayer *layer = [[CALayer alloc] init];
//    layer.backgroundColor = [UIColor colorWithRed:0 green:146/255.0 blue:1.0 alpha:1.0].CGColor;
//    layer.position = CGPointMake(size.width/2, size.height/2);
//    layer.bounds = CGRectMake(0, 0,WIDTH , WIDTH);
//    layer.cornerRadius = WIDTH/2;
//    
//    layer.shadowColor = [UIColor grayColor].CGColor;
//    layer.shadowOffset = CGSizeMake(2, 2);
//    layer.shadowOpacity = .9;
//    [self.view.layer addSublayer:layer];
    // Do any additional setup after loading the view, typically from a nib.
//                                 1.03
//    CGPoint position = CGPointMake(160, 200);
//    CGRect bounds = CGRectMake(0, 0, PHOTO_HEIGHT, PHOTO_HEIGHT);
//    CGFloat cornerRadius = PHOTO_HEIGHT/2;
//    CGFloat borderWidth = 2;
//    
//    CALayer *layerShadow = [[CALayer alloc] init];
//    layerShadow.bounds = bounds;
//    layerShadow.position = position;
//    layerShadow.cornerRadius = cornerRadius;
//    layerShadow.shadowColor = [UIColor grayColor].CGColor;
//    layerShadow.shadowOffset = CGSizeMake(2,1);
//    layerShadow.shadowOpacity = 1;
//    layerShadow.borderColor = [UIColor whiteColor].CGColor;
//    layerShadow.borderWidth = borderWidth;
//    [self.view.layer addSublayer:layerShadow];
//    
//    CALayer *layer = [[CALayer alloc] init];
//    layer.bounds = bounds;
//    layer.position = position;
//    layer.backgroundColor = [UIColor redColor].CGColor;
//    layer.cornerRadius = cornerRadius;
//    layer.masksToBounds = YES;
//    layer.borderColor = [UIColor whiteColor].CGColor;
//    layer.borderWidth = borderWidth;
//    layer.delegate = self;
//    
//    [self.view.layer addSublayer:layer];
//    [layer setNeedsDisplay];
    //                       1.04
    CGPoint position = CGPointMake(160, 200);
    CGRect bounds = CGRectMake(0, 0,PHOTO_HEIGHT, PHOTO_HEIGHT);
    CGFloat cornerRadius = PHOTO_HEIGHT/2;
    CGFloat borderWidth = 2;
    
    CALayer *layerShadow = [[CALayer alloc] init];
    layerShadow.bounds = bounds;
    layerShadow.position = position;
    layerShadow.cornerRadius = cornerRadius;
    layerShadow.shadowColor = [UIColor grayColor].CGColor;
    layerShadow.shadowOffset = CGSizeMake(2, 1);
    layerShadow.shadowOpacity = 1;
    layerShadow.borderColor = [UIColor whiteColor].CGColor;
    layerShadow.borderWidth = borderWidth;
    [self.view.layer addSublayer:layerShadow];
//
//    CALayer *layer = [[CALayer alloc] init];
//    layer.bounds = bounds;
//    layer.position = position;
//    layer.backgroundColor = [UIColor redColor].CGColor;
//    layer.cornerRadius = cornerRadius;
//    layer.masksToBounds = YES;
//    layer.borderColor = [UIColor whiteColor].CGColor;
//    layer.borderWidth = borderWidth;
//    
//    layer.transform = CATransform3DMakeRotation(M_PI, 1, 0, 0);
//    
//    layer.delegate = self;
//    
//    [self.view.layer addSublayer:layer];
//    [layer setNeedsDisplay];
//    UIImage *backgroundImage = [UIImage imageNamed:@"map_item_call.png"];
//    self.view.backgroundColor = [UIColor blueColor];
//    _layer = [[CALayer alloc] init];
//    _layer.bounds = CGRectMake(0, 0, 10, 20);
//    _layer.position = CGPointMake(50, 150);
//    _layer.contents = (id)[UIImage imageNamed:@"map_item_call.png"].CGImage;
//    [self.view.layer addSublayer:_layer];
    
    
}

//- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
//
//    CGContextSaveGState(ctx);
//    CGContextScaleCTM(ctx, 1, -1);
//    CGContextTranslateCTM(ctx, 0, -PHOTO_HEIGHT);
//    UIImage *image = [UIImage imageNamed:@"map_item_call.png"]
//    ;
//    CGContextDrawImage(ctx, CGRectMake(0, 0, PHOTO_HEIGHT, PHOTO_HEIGHT), image.CGImage);
//
//    CGContextRestoreGState(ctx);
//    1.03
//    CGContextSaveGState(ctx);
//    CGContextScaleCTM(ctx, 1, -1);
//    CGContextTranslateCTM(ctx, 0, -PHOTO_HEIGHT);
//    UIImage *image = [UIImage imageNamed:@"map_item_call.png"];
//    ;
//    CGContextDrawImage(ctx, CGRectMake(0, 0, PHOTO_HEIGHT, PHOTO_HEIGHT), image.CGImage);
//    
//    CGContextRestoreGState(ctx);
    
//}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CALayer *layer = self.view.layer.sublayers[0];
    CGFloat width = layer.bounds.size.width;
    if (width ==WIDTH) {
        width = WIDTH*4;
    }else {
        width = WIDTH;
    }
    layer.bounds = CGRectMake(0, 0, width, width);
    layer.position = [touch locationInView:self.view];
    layer.cornerRadius = width/2;
    [self.view.layer addSublayer:layer];
}

//- (void)translationAnimation:(CGPoint)location {
//    CABasicAnimation *basicAnimation = [CABasicAnimation animationWithKeyPath:@"position"];
//    
//    basicAnimation.toValue = [NSValue valueWithCGPoint:location];
//    
//    basicAnimation.duration = 5.0;
//    [_layer addAnimation:basicAnimation forKey:@"KCBasicAnimatinon_Translation"];
//    
//}
//
//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    UITouch *touch = touches.anyObject;
//    CGPoint location = [touch locationInView:self.view]
//    ;
//    [self translationAnimation:location];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
