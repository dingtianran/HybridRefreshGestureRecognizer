//
//  RefreshSpin.h
//  Refresh
//
//  Created by tianran DING on 12-3-5.
//  Copyright (c) 2012年 RefreshSpin. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RefreshSpin : UIView {
    UIImage *_containnerImage;
    UIImage *_spinImage;
    float _progress;
    BOOL _infinite;
    
    NSTimer *infiniteTimer;
    
}

@property (nonatomic, retain) UIImage *containnerImage;
@property (nonatomic, retain) UIImage *spinImage;
@property (nonatomic) float progress;
@property (nonatomic, assign) BOOL infinite;

- (void) startInfiniteAnimation;
- (void) stopInfiniteAnimation;

@end
