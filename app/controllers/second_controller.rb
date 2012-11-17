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

    backNormal = UIImage.imageNamed('nav-backbutton.png').stretchableImageWithLeftCapWidth(14, topCapHeight:0)
    backSelected = UIImage.imageNamed('nav-backbutton.png').stretchableImageWithLeftCapWidth(14, topCapHeight:0)

    # Style the back button

    offset = UIOffset.new(3, 0)

    UIBarButtonItem.appearance.setBackButtonBackgroundImage(backNormal, forState:UIControlStateNormal, barMetrics:UIBarMetricsDefault)
    UIBarButtonItem.appearance.setBackButtonBackgroundImage(backSelected, forState: UIControlStateHighlighted, barMetrics: UIBarMetricsDefault)
    UIBarButtonItem.appearance.setBackButtonTitlePositionAdjustment(offset, forBarMetrics:UIBarMetricsDefault)
  end
end