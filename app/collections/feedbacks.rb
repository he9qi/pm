class Feedbacks
  attr_accessor :models
  
  def initialize(json_string)
    collectionJson = json_string.is_a?(String) ? BW::JSON.parse(json_string) : json_string
    
    self.models = []
    #     
    collectionJson['data'].each do |json|
      self.models << Feedback.new(json)
    end
  end
  
end