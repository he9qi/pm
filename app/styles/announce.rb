Teacup::Stylesheet.new(:announce) do
  import :app
  
  style :weather_container,
    frame: [[25, 25], [200, 200]]
    
  style :label_temp,
    frame: [[0, 0], [50, 50]],
    font: UIFont.boldSystemFontOfSize(20),
    textColor: UIColor.grayColor
    
end
