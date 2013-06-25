Teacup::Stylesheet.new(:announces) do
  import :app
  import :base_table_page
  # 
  style :header,
    backgroundColor: UIColor.whiteColor,
    constraints: [
      :top_left,
      :full_width,
      constrain_height(35)
    ]
    
  style :header_bar_l,  
    backgroundColor: '#5bbeb0'.uicolor,
    constraints: [constrain_left(12), constrain_size(80, 2), constrain_top(17) ]
  
  style :header_bar_r,  
    backgroundColor: '#5bbeb0'.uicolor,
    constraints: [constrain_right(-12), constrain_size(80, 2), constrain_top(17) ]
  
  style :header_month,
    font: 'Arial'.uifont(20),
    text: 'month'._,
    textColor: '#5bbeb0'.uicolor,
    backgroundColor: UIColor.clearColor,
    textAlignment: UITextAlignmentCenter,
    constraints: [:center_x, constrain_size(80, 30), constrain_top(2)]
    
end
