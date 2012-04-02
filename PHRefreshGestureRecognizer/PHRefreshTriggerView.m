//
//  PHRefreshTriggerView.m
//  PHRefreshTriggerView
//
//  Created by Pier-Olivier Thibault on 11-12-20.
//  Copyright (c) 2011 25th Avenue. All rights reserved.
//

#import "PHRefreshTriggerView.h"
#import <QuartzCore/QuartzCore.h>
#import "RefreshSpin.h"

@interface PHRefreshTriggerView (Private)

@end

@implementation PHRefreshTriggerView
@synthesize titleLabel      = _titleLabel;
@synthesize spin            = _spin;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.titleLabel     = [[[UILabel alloc] initWithFrame:CGRectZero] autorelease];
        self.titleLabel.textAlignment   = UITextAlignmentCenter;
        [self addSubview:self.titleLabel];
        
        self.spin = [[[RefreshSpin alloc] initWithFrame:CGRectZero] autorelease];
        [self addSubview:self.spin];
                
    }
    return self;
}


- (void)dealloc {
    [_titleLabel release];
    self.titleLabel = nil;
    [_spin release];
    _spin = nil;
    
    [super dealloc];
}


- (void)layoutSubviews {
    self.titleLabel.frame               = CGRectIntegral(CGRectMake(0, 10, CGRectGetWidth(self.bounds), 30));
    self.spin.frame                     = CGRectMake(20, 10, 42, 42);
}


@end
