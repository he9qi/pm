Teacup::Stylesheet.new(:home) do
  import :app
  
  style :root,
    backgroundColor: '#a5ebe5'.uicolor
  
  style :home_image_view,
    constraints: [constrain_width(320), :top, :center_x, constrain_height(265)],
    image: 'home.png'.uiimage,
    backgroundColor: '#4bbdb7'.uicolor
    
  style :label_t_msg,
    text: "Today's temperature: "._,
    backgroundColor: UIColor.clearColor,
    constraints: [constrain_right(-40), constrain(:top).equals(:home_image_view, :top).plus(12)],
    font: 'STHeitiSC-Light'.uifont(14),
    textColor: UIColor.whiteColor
    
  style :label_notice,   
    backgroundColor: UIColor.clearColor,
    constraints: [constrain_left(10), constrain(:bottom).equals(:home_image_view, :bottom).minus(20)],
    font: 'STHeitiSC-Light'.uifont(18),
    textColor: UIColor.whiteColor
    
  style :label_temperature,
    backgroundColor: UIColor.clearColor,
    constraints: [constrain_right(-10), constrain_top(25)],
    font: 'Georgia-Bold'.uifont(70),
    textColor: UIColor.whiteColor
  
  style :home_btn_container,
    constraints: [
      :full_width,
      constrain(:bottom).equals(:root, :bottom),
      constrain_height(200)
    ],
    backgroundColor: '#d3f4f2'.uicolor
    
  btn_h_width  = 102
  btn_h_height = 97 
  style :btn_home_view,
    backgroundColor: UIColor.whiteColor,
    normal: { color: :black },
    highlighted: { color: :green },
    font: 'Arial'.uifont(12),
    imageEdgeInsets: UIEdgeInsetsMake(-20, 25, 0, 0),
    titleEdgeInsets: UIEdgeInsetsMake(60, -40, 0, 0)
  
  style :btn_announces, extends: :btn_home_view,
    title: "announce"._,
    image: 'btns/notice.png'.uiimage,
    constraints: [:top, :left, 
      constrain_size(btn_h_width, btn_h_height)]
    
  style :btn_payments, extends: :btn_home_view,
    title: "payment"._,
    image: 'btns/fee.png'.uiimage,
    constraints: [constrain_below(:btn_announces).plus(5), :left, 
      constrain_size(btn_h_width, btn_h_height)]
    
  style :btn_rents, extends: :btn_home_view,
    title: "rent"._,
    image: 'btns/rent.png'.uiimage,
    constraints: [:top, :center_x, 
      constrain_size(btn_h_width, btn_h_height)]
    
  style :btn_services, extends: :btn_home_view,
    title: "service"._,
    image: 'btns/chores.png'.uiimage,
    constraints: [constrain_below(:btn_rents).plus(5), :center_x, 
      constrain_size(btn_h_width, btn_h_height)]
    
  style :btn_feedbacks, extends: :btn_home_view,
    title: "feedback"._,
    image: 'btns/msg.png'.uiimage,
    constraints: [:top, :right, 
      constrain_size(btn_h_width, btn_h_height)]
    
  style :btn_merchants, extends: :btn_home_view,
    title: "merchant"._,
    image: 'btns/life.png'.uiimage,
    constraints: [constrain_below(:btn_feedbacks).plus(5), :right, 
      constrain_size(btn_h_width, btn_h_height)]
    
end
