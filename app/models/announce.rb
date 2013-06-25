class Announce
  attr_accessor :day, :content, :created_at
  
  def initialize(json)
    modelJson = json.is_a?(String) ? BW::JSON.parse(json) : json
    
    self.created_at = RubyTime.to_nsdate modelJson['created_at']
    self.content    = modelJson['content']
    
    components = NSCalendar.currentCalendar.components(NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit, fromDate:created_at)
    self.day = components.day
  end
  
end