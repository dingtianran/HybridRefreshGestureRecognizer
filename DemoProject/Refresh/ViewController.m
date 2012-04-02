//
//  ViewController.m
//  Refresh
//
//  Created by tianran DING on 12-3-5.
//  Copyright (c) 2012年 dingtr. All rights reserved.
//

#import "ViewController.h"
#import "PHRefreshGestureRecognizer.h"

@interface ViewController ()
@end

@implementation ViewController

- (id) init {
    self = [super init];
    if (self != nil) {
        self.title = @"Refresh";
    }
    return self;
}

- (void) loadView {
    [super loadView];
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.autoresizingMask = (UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight);
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    [_tableView release];
    
    [_tableView addGestureRecognizer:[[[PHRefreshGestureRecognizer alloc] initWithTarget:self action:@selector(stateChanged:)] autorelease]];
    
}


- (void)stateChanged:(UIGestureRecognizer *)gesture {
    if (gesture.state == UIGestureRecognizerStateRecognized) {
        [self performSelector:@selector(resetRecognizer) withObject:nil afterDelay:5.0];
    }
}

- (void)resetRecognizer {
    [[_tableView refreshGestureRecognizer] setRefreshState:PHRefreshIdle];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

#pragma mark -
#pragma mark uitalbleviewdelegate & datasource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentity;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentity];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentity] autorelease];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
