describe "Application 'pm'" do
  before do
    @app = UIApplication.sharedApplication
  end

  it "has one window" do
    @app.windows.size.should == 1
  end
  
  it "gets correct day from nsdate" do
    date = NSDate.from_components(year:2013, month: 6, day: 25)
    components = NSCalendar.currentCalendar.components(NSWeekdayCalendarUnit, fromDate:date)
    components.weekday.should == 3
  end
  
end
