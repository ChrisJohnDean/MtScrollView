//
//  MyScrollView.m
//  MtScrollView
//
//  Created by Chris Dean on 2018-02-26.
//  Copyright © 2018 Chris Dean. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)init
{
    self = [super init];
    if (self) {
        //self.userInteractionEnabled = YES;
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
        [self addGestureRecognizer:panGesture];
        //self.userInteractionEnabled = YES;
    }
    return self;
}



-(void)handlePan:(UIPanGestureRecognizer*)gesture {
    
    CGFloat bottomLimit = self.contentSize.height - self.frame.size.height;
    CGPoint translation = [gesture translationInView:self];

    CGFloat myNewYValue = self.bounds.origin.y - translation.y;
    NSLog(@"%f", translation.y);
    if ( myNewYValue > bottomLimit ){
        myNewYValue = bottomLimit;
    }
    if (myNewYValue < 0) {
        myNewYValue = 0;
    }

    [self setBounds:CGRectMake(0, myNewYValue, self.frame.size.width, self.frame.size.height)];
    NSLog(@"%@", NSStringFromCGPoint(self.bounds.origin));
    [gesture setTranslation:CGPointZero inView:self];
}

@end
