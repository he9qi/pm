# -*- encoding : utf-8 -*-
Teacup::Stylesheet.new(:merchant_cell) do
  style :content_view,
    backgroundColor: UIColor.whiteColor

  style :category_image_container,
    backgroundColor: '#eaeddc'.uicolor
    
  style :category_image_view,
    frame: [[12.5, 12.5], [30, 30]]
    
  style :title,
    backgroundColor: '#eaeddc'.uicolor,
    font: 'STHeitiSC-Light'.uifont(12),
    textColor: '#5bbeb0'.uicolor,
    text: '...',
    lineBreakMode: UILineBreakModeWordWrap,
    numberOfLines: 0
    
end
