describe "Weather Fetcher" do
  
  before do
    json = File.read File.expand_path("../../fixtures/weather.json", __FILE__)
    @weather = Weather.parse json
  end

  it "parses json to weather" do
    @weather.temp.should == 73
    @weather.text.should == "Partly Cloudy"
    @weather.code.should == 29
  end
  
end
