Teacup::Stylesheet.new(:base_table_page) do
  style :root,
    backgroundColor: '#eaeddc'.uicolor

  style :container,
    backgroundColor: UIColor.whiteColor,
    constraints: [
      constrain_right(-10), 
      constrain_left(10),
      constrain_top(10),
      constrain_width(300),
      constrain_height(470)
    ]
  # 
  style :header,
    backgroundColor: "#d2976b".uicolor,
    constraints: [
      :top_left,
      :full_width,
      constrain_height(15)
    ]


  style :table_view,
    separatorStyle: UITableViewCellSeparatorStyleNone,
    backgroundColor: UIColor.whiteColor,
    constraints: [
      constrain_left(12),
      constrain_right(-12),
      constrain_size(260, 470),
      constrain_below(:header).plus(10)
    ]
  style :table_view_background,
    backgroundColor: UIColor.clearColor
    
end
