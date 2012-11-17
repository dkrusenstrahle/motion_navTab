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

    # Set main view attributes

    self.title = "First"

    view.backgroundColor = UIColor.whiteColor 

    # Create images

    buttonNormal = UIImage.imageNamed('nav-button.png')
    buttonSelected = UIImage.imageNamed('nav-button-green.png')

    # Create button 

    button = UIBarButtonItem.alloc.init
    button.title = 'Add'
    button.action = 'push'
    button.target = self
    button.setBackgroundImage(buttonNormal, forState:UIControlStateNormal, barMetrics:UIBarMetricsDefault)
    button.setBackgroundImage(buttonSelected, forState:UIControlStateHighlighted, barMetrics:UIBarMetricsDefault)

    # Add button to navigation controller

    self.navigationItem.rightBarButtonItem = button
  end

  def push

    # Create the controller

    controller = SecondController.alloc.init

    # Push the new controller onto the stack

    self.navigationController.pushViewController(controller, animated:true)
  end
end