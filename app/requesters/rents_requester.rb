class RentsRequester
  
  attr_accessor :delegate
  
  def initialize(delegate)
    self.delegate = delegate
  end
  
  def fetch
    # for now, load from file
    json = File.read File.expand_path("sample/rents.json".resource)
    delegate.hh_request_finished(json)
  end
  
end