class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    # Set status bar color to black

    application.setStatusBarStyle(UIStatusBarStyleBlackOpaque, animated:false)

    # Create the main view controllers and style the tabs

    titleOffset = UIOffset.new(0, -4)

    tabNormal = UIImage.imageNamed('tabbar-activity-selected.png')
    tabSelected = UIImage.imageNamed('tabbar-activity-selected.png')

    firstViewController = FirstController.alloc.initWithNibName(nil, bundle: nil)
    firstViewController.tabBarItem = UITabBarItem.alloc.initWithTitle('First', image: nil, tag: 0)
    firstViewController.tabBarItem.setFinishedSelectedImage(tabSelected, withFinishedUnselectedImage: tabNormal)
    firstViewController.tabBarItem.setTitlePositionAdjustment(titleOffset)

    secondViewController = SecondController.alloc.initWithNibName(nil, bundle: nil)
    secondViewController.tabBarItem = UITabBarItem.alloc.initWithTitle('Second', image: nil, tag: 0)
    secondViewController.tabBarItem.setFinishedSelectedImage(tabSelected, withFinishedUnselectedImage: tabNormal)
    secondViewController.tabBarItem.setTitlePositionAdjustment(titleOffset)

    # Create the navigation controllers and set a background image to them

    backgroundImage = UIImage.imageNamed('navbar/background_navbar.png') 

    firstNavController = UINavigationController.alloc.initWithRootViewController(firstViewController)
    firstNavController.navigationBar.setBackgroundImage(backgroundImage, forBarMetrics:UIBarMetricsDefault)
    firstNavController.navigationBar.setTitleTextAttributes({
      UITextAttributeFont => UIFont.fontWithName('Futura-Medium', size:17),
      UITextAttributeTextShadowColor => UIColor.colorWithWhite(0.0, alpha:0.4)
    })

    secondNavController = UINavigationController.alloc.initWithRootViewController(secondViewController)
    secondNavController.navigationBar.setBackgroundImage(backgroundImage, forBarMetrics:UIBarMetricsDefault)
    secondNavController.navigationBar.setTitleTextAttributes({
      UITextAttributeFont => UIFont.fontWithName('Futura-Medium', size:17),
      UITextAttributeTextShadowColor => UIColor.colorWithWhite(0.0, alpha:0.4)
    })
    # Style the tabBarController

    tabBarController = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    tabBarController.tabBar.backgroundImage = UIImage.imageNamed('tabbar-background.png')
    tabBarController.tabBar.selectionIndicatorImage = UIImage.imageNamed('tabbar-background-pressed.png')

    # Add the tabs to the tabBarController

    tabBarController.viewControllers = [firstNavController, secondNavController]

    # Create and set root controller for the main window

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible
    @window.rootViewController = tabBarController

    true
  end
end
