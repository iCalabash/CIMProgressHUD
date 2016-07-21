//
//  CIMIndicatorView.m
//  app
//
//  Created by Faber on 16/6/21.
//  Copyright © 2016年 cim120. All rights reserved.
//

#import "CIMIndicatorView.h"

@interface CIMIndicatorView()
@property (nonatomic,strong)CALayer * whitePoint;
@property (nonatomic,strong)CAAnimationGroup *groupAnimation;
@end
@implementation CIMIndicatorView

- (void)startAnimation {
    if (self.whitePoint.animationKeys.count) {
        
    }else{
         [self.whitePoint addAnimation:self.groupAnimation forKey:@"groupAnimation"];
    }
}

- (void)stopAnimation {
    [self.whitePoint removeAllAnimations];
}
-(instancetype)init {
    if (self=[super init]) {
        self.frame=CGRectMake(0, 0, 90, 90);
        
        CAShapeLayer * shapeLayer = [CAShapeLayer layer];
        shapeLayer.frame= CGRectMake(0, 0, 90, 90);
        
        shapeLayer.path          = [self bezierPath].CGPath;
        
        shapeLayer.fillColor   = [UIColor clearColor].CGColor;
        shapeLayer.strokeColor = [UIColor whiteColor].CGColor;
        shapeLayer.lineWidth   = 1.0f;
        shapeLayer.opacity     = 1.0f;
        shapeLayer.position    = CGPointMake(45 ,45);
        [self.layer addSublayer:shapeLayer];
        
        self.whitePoint = [CALayer layer];
        self.whitePoint.frame=CGRectMake(0, 0, 6, 6);
        self.whitePoint.backgroundColor = [UIColor whiteColor].CGColor;
        self.whitePoint.shadowColor = [UIColor whiteColor].CGColor;
        self.whitePoint.borderWidth=3.f;
        self.whitePoint.borderColor=[UIColor colorWithRed:1 green:1 blue:1 alpha:0.1].CGColor;
        self.whitePoint.shadowOpacity=0.5f;
        self.whitePoint.shadowRadius=3.f;
        self.whitePoint.cornerRadius = 3.f;
        self.whitePoint.position = CGPointMake(0, 45);
        [self.layer addSublayer:self.whitePoint];
        
        
        CAKeyframeAnimation * animation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
        NSValue * value5 = [NSValue valueWithCGPoint:CGPointMake(-10, 45)];
        NSValue * value0 = [NSValue valueWithCGPoint:CGPointMake(20, 45)];
        NSValue * value1 = [NSValue valueWithCGPoint:CGPointMake(28.5, 45-15)];
        NSValue * value2 = [NSValue valueWithCGPoint:CGPointMake(37, 45+15)];
        NSValue * value3 = [NSValue valueWithCGPoint:CGPointMake(20+25.5, 45)];
        NSValue * value4 = [NSValue valueWithCGPoint:CGPointMake(90, 45)];
        animation.values=[NSArray arrayWithObjects:value5,value0,value1,value2,value3,value4, nil];
        
        CABasicAnimation *anima2 = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
        anima2.fromValue = [NSNumber numberWithFloat:1.2f];
        anima2.toValue = [NSNumber numberWithFloat:1.0f];
        anima2.duration= 1;
        anima2.repeatCount=CGFLOAT_MAX;
        
        self.groupAnimation = [CAAnimationGroup animation];
        
        self.groupAnimation.animations = [NSArray arrayWithObjects:animation,anima2, nil];
        self.groupAnimation.duration = 2.5f;
        self.groupAnimation.repeatCount = CGFLOAT_MAX;
        
        [self.whitePoint addAnimation:self.groupAnimation forKey:@"groupAnimation"];

    }
    return self;
}

- (UIBezierPath *)bezierPath {
    
    UIBezierPath * bezierPath = [UIBezierPath bezierPath];
    
    [bezierPath moveToPoint:CGPointMake(0, 45)];
    [bezierPath addLineToPoint:CGPointMake(0+20, 45)];
    [bezierPath addLineToPoint:CGPointMake(0+20+8.5, 45-15)];
    [bezierPath addLineToPoint:CGPointMake(0+20+17, 45+15)];
    [bezierPath addLineToPoint:CGPointMake(0+20+25.5, 45)];
    [bezierPath addLineToPoint:CGPointMake(90, 45)];
    
    return bezierPath;
}

@end
