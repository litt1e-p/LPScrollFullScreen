//
//  TableViewController.m
//  LPScrollFullScreenSample
//
//  Created by litt1e-p on 15/11/6.
//  Copyright © 2015年 litt1e-p. All rights reserved.
//

#import "TableViewController.h"
#import "LPScrollFullScreen.h"
#import "define.h"

@interface TableViewController ()

@property (nonatomic) NSArray *data;
@property (nonatomic) LPScrollFullScreen *scrollProxy;

@end

@implementation TableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"TableView";
    [self setupData];
    
    if (!IOS7_OR_LATER) {
        // support full screen on iOS 6
        self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
        self.navigationController.toolbar.barStyle = UIBarStyleBlackTranslucent;
    }
    self.edgesForExtendedLayout = UIRectEdgeAll;
    self.extendedLayoutIncludesOpaqueBars = YES;
    _scrollProxy = [[LPScrollFullScreen alloc] initWithForwardTarget:self];
    self.tableView.delegate = (id)_scrollProxy;
}

- (void)setupData
{
    NSMutableArray *data = [@[] mutableCopy];
    for (NSUInteger i = 0; i < 6; i++) {
        [data addObject:@(i)];
    }
    _data = [data copy];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _data.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *Identifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Identifier forIndexPath:indexPath];
    cell.textLabel.text = [_data[indexPath.row] stringValue];
    return cell;
}


@end
