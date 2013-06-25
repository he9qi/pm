describe "Announce Init" do
  
  before do
    json = File.read File.expand_path("sample/announce.json".resource)
    @announce = Announce.new json
  end

  it "parses json to announce" do
    @announce.day.should == 25
    @announce.content.should == "小区将于28日9点开始绿化灭蚊，请各位住户提前注意准备！"
  end
  
end
