describe "Announces Collection init" do
  
  before do
    json = File.read File.expand_path("sample/announces.json".resource)
    @announces = Announces.new json
  end

  it "parses json to announces" do
    @announces.month.should == 6
  end
  
  it "gets announce objects" do
    @announces.models.count.should == 6
    @announce = @announces.models.first
    @announce.day.should == 25
    @announce.content.should == "小区将于28日9点开始绿化灭蚊，请各位住户提前注意准备！"
  end
  
end
