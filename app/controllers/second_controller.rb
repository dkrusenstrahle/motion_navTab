class SecondController < UIViewController
  def initWithNibName(name, bundle: bundle)
    super
    add_elements
    self
  end

  def viewDidLoad
    super
  end

  def add_elements

    # Set views title in the navigationBar

    self.title = "Second"

    # Set the window background color

    view.backgroundColor = UIColor.whiteColor 

    # Create the state images for the back button

    backButtonNormal = UIImage.imageNamed('navbar/button_back.png').stretchableImageWithLeftCapWidth(17, topCapHeight:0)
    backButtonSelected = UIImage.imageNamed('navbar/button_back.png').stretchableImageWithLeftCapWidth(17, topCapHeight:0)

    # Style and adjust the back button

    titleOffset = UIOffset.new(3, 0)

    UIBarButtonItem.appearance.setBackButtonBackgroundImage(backButtonNormal, forState:UIControlStateNormal, barMetrics:UIBarMetricsDefault)
    UIBarButtonItem.appearance.setBackButtonBackgroundImage(backButtonSelected, forState: UIControlStateHighlighted, barMetrics: UIBarMetricsDefault)
    UIBarButtonItem.appearance.setBackButtonTitlePositionAdjustment(titleOffset, forBarMetrics:UIBarMetricsDefault)
  end
end