# LPScrollFullScreen
Scroll to hide navigationBar and toolBar or tabBar for making full screen effect like Facebook app
which is base on [NJKScrollFullScreen](https://github.com/ninjinkun/NJKScrollFullScreen).

## Include
- use cocapods
> pod 'LPScrollFullScreen', '~> 1.0.0'
- manual include
> drag LPScrollFullScreen folder into you project

## Usage
>need 2 lines code only
>for example, in UITableViewController:
- //@property (nonatomic, strong) LPScrollFullScreen *scrollProxy;
- //self.edgesForExtendedLayout = UIRectEdgeAll;
- //self.extendedLayoutIncludesOpaqueBars = YES;
- _scrollProxy = [[LPScrollFullScreen alloc] initWithForwardTarget:self];
- self.tableView.delegate = (id)_scrollProxy;
