class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    # Set status bar color to black

    application.setStatusBarStyle(UIStatusBarStyleBlackOpaque, animated:false)

    # Set default values

    titleOffset = UIOffset.new(0, -4)
    defaultFont = UIFont.fontWithName('Futura-Medium', size:17)

    tabNormal = UIImage.imageNamed('body/icon_gear.png')
    tabSelected = UIImage.imageNamed('body/icon_gear.png')

    # Create the main view controllers

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
    firstNavController.navigationBar.setTitleTextAttributes({UITextAttributeFont => defaultFont})

    secondNavController = UINavigationController.alloc.initWithRootViewController(secondViewController)
    secondNavController.navigationBar.setBackgroundImage(backgroundImage, forBarMetrics:UIBarMetricsDefault)
    secondNavController.navigationBar.setTitleTextAttributes({UITextAttributeFont => defaultFont})

    # Style the tabBarController

    tabBarController = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    tabBarController.tabBar.backgroundImage = UIImage.imageNamed('tabbar/background_tabbar.png')
    tabBarController.tabBar.selectionIndicatorImage = UIImage.imageNamed('tabbar-background-pressed.png')
    tabBarController.tabBarItem.setTitleTextAttributes({UITextAttributeFont => defaultFont}, forState:UIControlStateNormal)

    # Add the tabs to the tabBarController

    tabBarController.viewControllers = [firstNavController, secondNavController]

    # Create and set root controller for the main window

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible
    @window.rootViewController = tabBarController

    true
  end
end
