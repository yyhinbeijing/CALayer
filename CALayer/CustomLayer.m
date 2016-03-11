//
//  CustomLayer.m
//  CALayer
//
//  Created by 阳永辉 on 16/3/8.
//  Copyright © 2016年 HuiDe. All rights reserved.
//

#import "CustomLayer.h"

@implementation CustomLayer

- (instancetype)init {
    self = [super init];
    if (self) {
        NSLog(@"dddddddd");
    }
    return  self;
}

+ (Class)layerClass {
    return [CustomLayer class];
}

- (void)setFrame:(CGRect)frame {
    [super setFrame:frame];
}

- (void)setPosition:(CGPoint)position {
    [super setPosition:position];
}

- (void)setBounds:(CGRect)bounds {
    [super setBounds:bounds];
}
@end
