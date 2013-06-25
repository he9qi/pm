# -*- encoding : utf-8 -*-
Teacup::Stylesheet.new(:payments) do
  style :root,
    backgroundColor: '#eaeddc'.uicolor
    
  style :payment_btn_container,
    constraints: [
      constrain_left(10),
      constrain_right(10),
      constrain(:top).equals(:root, :top),
      constrain(:width).equals(:root, :width).minus(20),
      :full_height,
      :center_x
    ],
    backgroundColor: :white.uicolor
    
  btn_h_width  = 102
  btn_h_height = 97 
  style :btn_payment_view,
    backgroundColor: :clear.uicolor,
    normal: { color: :black },
    highlighted: { color: :green },
    font: 'Arial'.uifont(12),
    imageEdgeInsets: UIEdgeInsetsMake(-20, 25, 0, 0),
    titleEdgeInsets: UIEdgeInsetsMake(60, -40, 0, 0)

  style :btn_power, extends: :btn_payment_view,
    title: "power"._,
    image: 'btns/power.png'.uiimage,
    constraints: [:top, :left, 
      constrain_size(btn_h_width, btn_h_height)]

  style :btn_water, extends: :btn_payment_view,
    title: "water"._,
    image: 'btns/water.png'.uiimage,
    constraints: [constrain_below(:btn_power).plus(5), :left, 
      constrain_size(btn_h_width, btn_h_height)]

  style :btn_gas, extends: :btn_payment_view,
    title: "gas"._,
    image: 'btns/gas.png'.uiimage,
    constraints: [:top, :center_x, 
      constrain_size(btn_h_width, btn_h_height)]

  style :btn_property, extends: :btn_payment_view,
    title: "property"._,
    image: 'btns/property.png'.uiimage,
    constraints: [constrain_below(:btn_gas).plus(5), :center_x, 
      constrain_size(btn_h_width, btn_h_height)]
end