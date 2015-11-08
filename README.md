# LPScrollFullScreen
Scroll to hide navigationBar and toolBar or tabBar for making full screen effect like Facebook app
which is base on [NJKScrollFullScreen](https://github.com/ninjinkun/NJKScrollFullScreen).
## Usage
>need 2 lines code only
>for example, in UITableViewController:
- //self.edgesForExtendedLayout = UIRectEdgeAll;
- //self.extendedLayoutIncludesOpaqueBars = YES;
- _scrollProxy = [[LPScrollFullScreen alloc] initWithForwardTarget:self];
- self.tableView.delegate = (id)_scrollProxy;
