# -*- encoding : utf-8 -*-
Teacup::Stylesheet.new(:announce_cell) do
  style :content_view,
    backgroundColor: UIColor.whiteColor

  style :day,
    font: 'GillSans-Bold'.uifont(22),
    text: '00',
    textColor: '#5bbeb0'.uicolor,
    backgroundColor: '#eaeddc'.uicolor,
    textAlignment: UITextAlignmentCenter

  style :content,
    backgroundColor: '#eaeddc'.uicolor,
    font: 'STHeitiSC-Light'.uifont(12),
    textColor: '#5bbeb0'.uicolor,
    text: '...',
    lineBreakMode: UILineBreakModeWordWrap,
    numberOfLines: 0
    
end
