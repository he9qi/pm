class PaymentsViewController < UIViewController
  include CustomNavigationHelper
  
  stylesheet :payments
  
  PAYMENT_TYPES = ['power', 'water', 'gas', 'property']

  layout :root, do
    subview(UIView, :payment_btn_container) do
      PAYMENT_TYPES.each do |payment|
        button = "btn_#{payment}"
        instance_variable_set("@#{button}", subview(UIButton.custom, button.to_sym) )
      end
    end
  end
  
  def viewWillAppear(animated)
    super(animated)
    hide_navigation_bar(animated)
  end

  def viewDidLoad
    super
    self.title = "payment"._
    
    customize_menu_button
  end
end