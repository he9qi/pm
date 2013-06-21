class AnnounceViewController < UIViewController

  stylesheet :announce

  layout do
    subview(UIView, :weather_container) do
      @label_temp = subview(UILabel, :label_temp)
    end
  end

  def viewDidLoad
    super
    self.title = "announce"._
    
    Weather.fetch(self)
  end
  
  def didFetchWeather(weather)
    @weather = weather
    @label_temp.text = weather.temp_in_celsius.to_s
  end
  
end