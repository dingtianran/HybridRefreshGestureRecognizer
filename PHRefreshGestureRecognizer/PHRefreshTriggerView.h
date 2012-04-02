//
//  PHRefreshTriggerView.h
//  PHRefreshTriggerView
//
//  Created by Pier-Olivier Thibault on 11-12-20.
//  Copyright (c) 2011 25th Avenue. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RefreshSpin;
@interface PHRefreshTriggerView : UIView {
    UILabel                 *_titleLabel;
    RefreshSpin             *_spin;
    
}

@property (nonatomic, retain) UILabel *titleLabel;
@property (nonatomic, retain) RefreshSpin *spin;

@end
