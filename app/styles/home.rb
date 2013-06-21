Teacup::Stylesheet.new(:home) do
  import :app
  
  style :home_btn_container,
    frame: [[25, 25], [200, 200]]
  
  style :btn_home_view, extends: :btn_shadow,
    normal: { color: :black },
    highlighted: { color: :green }
  
  style :btn_announce, extends: :btn_home_view,
    title: "announce"._,
    frame: [[0, 0], [60, 60]]
    
  style :btn_payment, extends: :btn_home_view,
    title: "payment"._,
    frame: [[0, 100], [60, 60]]
    
  style :btn_rent, extends: :btn_home_view,
    title: "rent"._,
    frame: [[100, 0], [60, 60]]
    
  style :btn_service, extends: :btn_home_view,
    title: "service"._,
    frame: [[100, 100], [60, 60]]
    
  style :btn_feedback, extends: :btn_home_view,
    title: "feedback"._,
    frame: [[200, 0], [60, 60]]
    
  style :btn_merchants, extends: :btn_home_view,
    title: "merchants"._,
    frame: [[200, 100], [60, 60]]
    
end
