class Announces
  attr_accessor :month, :models
  
  def initialize(json_string)
    collectionJson = json_string.is_a?(String) ? BW::JSON.parse(json_string) : json_string
    
    self.month  = collectionJson['month']
    self.models = []
    #     
    collectionJson['data'].each do |json|
      self.models << Announce.new(json)
    end
  end
  
  def month_in_text
    month.to_s + "  " + "month"._
  end
  
end