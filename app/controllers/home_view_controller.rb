class HomeViewController < UIViewController
  
  stylesheet :home

  ACTIONS = ['announces',  'payments', 'services', 'rents', 'feedbacks', 'merchants']

  layout :root do
    subview(UIImageView, :home_image_view) do
      @label_t_msg = subview(UILabel, :label_t_msg)
      @label_temperature = subview(UILabel, :label_temperature)
      @label_notice = subview(UILabel, :label_notice)
    end
    subview(UIView, :home_btn_container) do
      ACTIONS.each do |action|
        button = "btn_#{action}"
        instance_variable_set("@#{button}", subview(UIButton.custom, button.to_sym) )
      end
    end
  end
  
  def viewWillAppear(animated)
    super(animated)
    self.navigationController.setNavigationBarHidden(true, animated:animated)
  end
  
  def viewDidLoad
    super
    ACTIONS.each do |action|
      button = instance_variable_get("@btn_#{action}")
      button.on(:touch_up_inside) { send(action) }
    end
    
    Weather.fetch(self)
    @label_notice.text = notice_of_today
  end
  
  def notice_of_today
    components  = NSCalendar.currentCalendar.components(NSWeekdayCalendarUnit, fromDate:NSDate.new)
    weekday_num = components.weekday
    
    weekday, num_limited = case weekday_num
    when 1
      ["Sunday"._ , "none"._]
    when 2
      ["Monday"._ , "1 and 6"._]
    when 3
      ["Tuesday"._ , "2 and 7"._]
    when 4
      ["Wednesday"._, "3 and 8"._]
    when 5
      ["Thursday"._, "4 and 9"._]
    when 6
      ["Friday"._, "5 and 0"._]
    when 7
      ["Saturday"._, "none"._]
    end
    
    "Weekday of today is"._ + weekday._ + ". " + "Car number limited is "._ + num_limited._
  end
  
  ACTIONS.each do |action|
    define_method action do
      controller_class = Kernel.const_get("#{action.capitalize}ViewController") #"#{action.capitalize}ViewController".to_class
      view_controller = controller_class.alloc.initWithNibName(nil, bundle: nil)
      self.navigationController.pushViewController(view_controller, animated: true)
    end
  end

  def didFetchWeather(weather)
    @weather = weather
    @label_temperature.text = weather.temp_in_celsius_text
  end

  def shouldAutorotate
    false
  end
    
end