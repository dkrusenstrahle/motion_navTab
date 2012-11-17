class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    # Set status bar color to black

    application.setStatusBarStyle(UIStatusBarStyleBlackOpaque, animated:false)

    # Create the main window

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    # Create the main controllers

    firstViewController = FirstController.alloc.initWithNibName(nil, bundle: nil)
    secondViewController = SecondController.alloc.initWithNibName(nil, bundle: nil)

    # Create the navigation controllers

    firstNavController = UINavigationController.alloc.initWithRootViewController(firstViewController)
    secondNavController = UINavigationController.alloc.initWithRootViewController(secondViewController)

    # Style the navBar

    backgroundImage = UIImage.imageNamed('navigationbar.png') 

    firstNavController.navigationBar.setBackgroundImage(backgroundImage, forBarMetrics:UIBarMetricsDefault)
    secondNavController.navigationBar.setBackgroundImage(backgroundImage, forBarMetrics:UIBarMetricsDefault)

    # Style the tabBar

    tabBarController = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    tabBarController.tabBar.backgroundImage = UIImage.imageNamed('tabbar-background.png')
    tabBarController.tabBar.selectionIndicatorImage = UIImage.imageNamed('tabbar-background-pressed.png')

    # Add the tabs

    tabBarController.viewControllers = [firstNavController, secondNavController]

    # Set root controller for the window

    @window.rootViewController = tabBarController

    true
  end
end
