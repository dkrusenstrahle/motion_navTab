class FirstController < UIViewController
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

    self.title = "First"

    # Set the window background color

    view.backgroundColor = UIColor.whiteColor 

    # Create the state images for the button

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

    # Create the controller and push it onto the stack

    controller = SecondController.alloc.init
    self.navigationController.pushViewController(controller, animated:true)
  end
end