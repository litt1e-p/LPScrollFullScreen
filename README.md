# LPScrollFullScreen

Scroll to hide navigationBar and toolBar or tabBar for making full screen effect like Facebook app
which is base on [NJKScrollFullScreen](https://github.com/ninjinkun/NJKScrollFullScreen).

##Screenshot

<img src="Screenshots/screencast.gif" width=320>

## Include

- use cocapods
> pod 'LPScrollFullScreen', '~> 1.0.2'
- manual include
> drag LPScrollFullScreen folder into you project

## Usage

>need 2 lines code only
>for example, in UITableViewController:
```python
 //@property (nonatomic, strong) LPScrollFullScreen *scrollProxy;
 //self.edgesForExtendedLayout = UIRectEdgeAll;
 //self.extendedLayoutIncludesOpaqueBars = YES;
 _scrollProxy = [[LPScrollFullScreen alloc] initWithForwardTarget:self];
 self.tableView.delegate = (id)_scrollProxy;
```

##Update

- v1.0.2

 fix a bug of hidding tabBar & navigationBar while scrollView's contentOffset <= navigationBar's bottom
 
- v1.0.1

 add a static property value for origin navigationBar's bottom
