class SecondController < UIViewController
  def initWithNibName(name, bundle: bundle)
    super
    customize
    self
  end

  def viewDidLoad
    super
  end

  def customize

    # Set the main view attributes

    self.title = "Second"
    
    view.backgroundColor = UIColor.whiteColor 

    # Create the images

    tabNormal = UIImage.imageNamed('tabbar-activity-selected.png')
    tabSelected = UIImage.imageNamed('tabbar-activity-selected.png')

    backNormal = UIImage.imageNamed('nav-backbutton.png').stretchableImageWithLeftCapWidth(14, topCapHeight:0)
    backSelected = UIImage.imageNamed('nav-backbutton.png').stretchableImageWithLeftCapWidth(14, topCapHeight:0)

    # Style the tabBar

    verticalOffset = UIOffset.new(0, -4)

    self.tabBarItem = UITabBarItem.alloc.initWithTitle('Second', image: nil, tag: 0)
    self.tabBarItem.setFinishedSelectedImage(tabSelected, withFinishedUnselectedImage: tabNormal)
    self.tabBarItem.setTitlePositionAdjustment(verticalOffset)

    # Style the back button

    offset = UIOffset.new(3, 0)

    UIBarButtonItem.appearance.setBackButtonBackgroundImage(backNormal, forState:UIControlStateNormal, barMetrics:UIBarMetricsDefault)
    UIBarButtonItem.appearance.setBackButtonBackgroundImage(backSelected, forState: UIControlStateHighlighted, barMetrics: UIBarMetricsDefault)
    UIBarButtonItem.appearance.setBackButtonTitlePositionAdjustment(offset, forBarMetrics:UIBarMetricsDefault)
  end
end