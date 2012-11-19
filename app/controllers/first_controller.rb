class FirstController < UIViewController
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

    self.title = "First"

    # Create the state images for the button and set the font

    defaultFont = UIFont.fontWithName('Futura-Medium', size:13)
    
    buttonNormal = UIImage.imageNamed('navbar/button.png')
    buttonSelected = UIImage.imageNamed('navbar/button.png')
    backgroundBody = UIImage.imageNamed('body/background_body.png')

    # Set the window background color and pattern

    view.backgroundColor = UIColor.whiteColor 
    view.backgroundColor = UIColor.alloc.initWithPatternImage(backgroundBody)

    # Create button 

    button = UIBarButtonItem.alloc.init
    button.title = 'Add'
    button.action = 'push'
    button.target = self
    button.setBackgroundImage(buttonNormal, forState:UIControlStateNormal, barMetrics:UIBarMetricsDefault)
    button.setBackgroundImage(buttonSelected, forState:UIControlStateHighlighted, barMetrics:UIBarMetricsDefault)
    button.setTitleTextAttributes({UITextAttributeFont => defaultFont}, forState:UIControlStateNormal)

    # Add button to navigation controller

    self.navigationItem.rightBarButtonItem = button
  end

  def push

    # Create the controller and push it onto the stack

    controller = SecondController.alloc.init
    self.navigationController.pushViewController(controller, animated:true)
  end
end