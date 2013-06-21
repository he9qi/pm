class HomeViewController < UIViewController
  
  stylesheet :home

  ACTIONS = ['announce',  'payment', 'service', 'rent', 'feedback', 'merchants']

  layout do
    subview(UIView, :home_btn_container) do
      ACTIONS.each do |action|
        button = "btn_#{action}"
        instance_variable_set("@#{button}", subview(UIButton.rounded, button.to_sym) )
      end
    end
  end
  
  def viewDidLoad
    super
    ACTIONS.each do |action|
      button = instance_variable_get("@btn_#{action}")
      button.on(:touch_up_inside) { send(action) }
    end
  end
  
  ACTIONS.each do |action|
    define_method action do
      controller_class = Kernel.const_get("#{action.capitalize}ViewController") #"#{action.capitalize}ViewController".to_class
      view_controller = controller_class.alloc.initWithNibName(nil, bundle: nil)
      self.navigationController.pushViewController(view_controller, animated: true)
    end
  end

  
end