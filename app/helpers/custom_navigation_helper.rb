module CustomNavigationHelper
  
  def customize_menu_button
    @menuButton = UIButton.alloc.initWithFrame(CGRectMake(0, 0, 22, 22))
    @menuButton.setImage("icons/icon_menu.png".uiimage, forState:UIControlStateNormal)
    @menuButton.setShowsTouchWhenHighlighted(true)
    self.navigationItem.leftBarButtonItem = UIBarButtonItem.alloc.initWithCustomView(@menuButton)
    self.navigationController.navigationBar.tintColor = "#4bbdb7".uicolor
    @menuButton.on(:touch_up_inside) { pop_view }
  end

  def pop_view
    self.navigationController.popViewControllerAnimated(true)
  end
  
  def hide_navigation_bar(animated)
    self.navigationController.setNavigationBarHidden(false, animated:animated)
  end
  
end