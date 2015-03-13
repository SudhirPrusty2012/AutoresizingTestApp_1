//
//  MainController.m
//  AutoresizingTestApp_1
//
//  Created by sudhirios on 3/10/15.
//  Copyright (c) 2015 Mac-12. All rights reserved.
//

#import "MainController.h"
#import "MyColorTestBackView.h"
#import "AppDelegate.h"

@interface MainController ()

@end

@implementation MainController

- (void)viewDidLoad {
    // Do view setup here.
}

-(void)awakeFromNib{
    
     //self.view.layer.backgroundColor = [NSColor yellowColor].CGColor;
}

-(void)loadView{
    [super loadView];
    
    AppDelegate *_appDel = [NSApplication sharedApplication].delegate;
    CGRect aFrame =  NSMakeRect(0, 0,_appDel.window.frame.size.width, _appDel.window.frame.size.height);
    self.view.frame = aFrame;//[[NSView alloc] initWithFrame: aFrame];
    //self.view.autoresizingMask = NSViewMinXMargin | NSViewMaxXMargin | NSViewMinYMargin | NSViewMaxYMargin | NSViewWidthSizable | NSViewHeightSizable;
    
    
    MyColorTestBackView *_myColorTestBackView = [[MyColorTestBackView alloc]initWithFrameAndColor:CGRectMake(0, 0,self.view.frame.size.width ,self.view.frame.size.height) :[NSColor redColor]];
    [self.view addSubview:_myColorTestBackView];
    //[_myColorTestBackView setCenter];
}

@end
