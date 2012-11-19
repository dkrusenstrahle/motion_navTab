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

    # Set views title in the navigationBar

    self.title = "Second"

    # Create the state images for the back button and set the font

    font = UIFont.fontWithName('Futura-Medium', size:13)
    backButtonNormal = UIImage.imageNamed('navbar/button_back.png').stretchableImageWithLeftCapWidth(13, topCapHeight:0)
    backButtonSelected = UIImage.imageNamed('navbar/button_back.png').stretchableImageWithLeftCapWidth(13, topCapHeight:0)
    backgroundBody = UIImage.imageNamed('body/background_body.png')

    # Set the window background color

    view.backgroundColor = UIColor.whiteColor 
    view.backgroundColor = UIColor.alloc.initWithPatternImage(backgroundBody)

    # Style and adjust the back button

    titleOffset = UIOffset.new(2, -2)

    UIBarButtonItem.appearance.setBackButtonBackgroundImage(backButtonNormal, forState:UIControlStateNormal, barMetrics:UIBarMetricsDefault)
    UIBarButtonItem.appearance.setBackButtonBackgroundImage(backButtonSelected, forState: UIControlStateHighlighted, barMetrics: UIBarMetricsDefault)
    UIBarButtonItem.appearance.setBackButtonTitlePositionAdjustment(titleOffset, forBarMetrics:UIBarMetricsDefault)
    UIBarButtonItem.appearance.setTitleTextAttributes({UITextAttributeFont => font}, forState:UIControlStateNormal)
  end
end