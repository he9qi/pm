class Merchant
  attr_accessor :category, :title, :created_at, :address
  
  def initialize(json)
    modelJson = json.is_a?(String) ? BW::JSON.parse(json) : json
    
    self.created_at = RubyTime.to_nsdate modelJson['created_at']
    self.title      = modelJson['title']
    self.category   = modelJson['category']
    self.address    = modelJson['address']
  end
  
  def category_icon_uiimage
    ("icons/"+category_in_icon_name+".png").uiimage
  end
  
  # the category here could be ... restaurant, shop, etc.
  def category_in_icon_name
    case category
    when 0
      "icon_clean"
    when 1
      "icon_nanny"
    when 2
      "icon_time"
    when 3
      "icon_fix"
    else
      "icon_clean"
    end
  end
  
end