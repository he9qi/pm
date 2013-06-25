class Weather
  FIVE_OVER_NINE = 0.5555555555555556
  YAHOO_WEATHER_URL = "http://weather.yahooapis.com/forecastrss?u=c"
  YAHOO_APIS_WEATHER_QUERY = "http://query.yahooapis.com/v1/public/yql?format=json&q=select item from weather.forecast where woeid="
  
  attr_accessor :text, :temp, :code, :date
  
  def initialize(condition={})
    @text = condition['text']
    @temp = condition['temp'].to_i
    @code = condition['code'].to_i
    @date = condition['date']
  end
  
  #(F-32)x5/9
  def temp_in_celsius
    ((@temp - 32) * FIVE_OVER_NINE).to_i
  end
  
  def temp_in_celsius_text
    temp_in_celsius.to_s + "°"
  end
  
  def self.parse(json_str)
    json      = BW::JSON.parse(json_str)
    data      = json['query']['results']['channel']
    item      = data['item']
    condition = item['condition']
    
    Weather.new condition
  end
  
  def self.fetch(delegate, woeid="12713587")
    BW::HTTP.get("#{YAHOO_APIS_WEATHER_QUERY}#{woeid}") do |response|
      # p response.body.to_str
      weather = self.parse response.body.to_str
      delegate.didFetchWeather(weather)
    end
  end
  
end