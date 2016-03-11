//
//  CustomView.m
//  CALayer
//
//  Created by 阳永辉 on 16/3/8.
//  Copyright © 2016年 HuiDe. All rights reserved.
//

#import "CustomView.h"
#import "CustomLayer.h"

@implementation CustomView

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"dddddd");
    }
    return self;
}

+ (Class)layerClass {
    return  [CustomLayer class];
}

- (void)setFrame:(CGRect)frame {
    [super setFrame:frame];
}

- (void)setCenter:(CGPoint)center {
    [super setCenter:center];
}

- (void)setBounds:(CGRect)bounds {
    [super setBounds:bounds];
}

@end
