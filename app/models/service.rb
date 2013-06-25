class Service
  attr_accessor :category, :content, :created_at
  
  def initialize(json)
    modelJson = json.is_a?(String) ? BW::JSON.parse(json) : json
    
    self.created_at = RubyTime.to_nsdate modelJson['created_at']
    self.content    = modelJson['content']
    self.category   = modelJson['category']
  end
  
  def category_icon_uiimage
    ("icons/"+category_in_icon_name+".png").uiimage
  end
  
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