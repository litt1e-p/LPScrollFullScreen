//
//  ViewController.m
//  LPScrollFullScreenSample
//
//  Created by litt1e-p on 15/11/6.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "ViewController.h"
#import "LPScrollFullScreen/LPScrollFullScreen.h"
#import "define.h"

@interface ViewController ()

@property (strong, nonatomic) UIWebView *webView;
@property (nonatomic) LPScrollFullScreen *scrollProxy;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.webView = [[UIWebView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.webView];
    
    if (!IOS7_OR_LATER) {
        // support full screen on iOS 6
        self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
        self.navigationController.toolbar.barStyle = UIBarStyleBlackTranslucent;
    }
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.extendedLayoutIncludesOpaqueBars = YES;
    _scrollProxy = [[LPScrollFullScreen alloc] initWithForwardTarget:self];
    self.webView.scrollView.delegate = (id)_scrollProxy;
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.github.com"]]];
}

@end
