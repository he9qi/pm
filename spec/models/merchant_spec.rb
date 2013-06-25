describe "Merchant Init" do
  
  before do
    json = File.read File.expand_path("sample/merchant.json".resource)
    @merchant = Merchant.new json
  end

  it "parses json to merchant object" do
    @merchant.category.should == 0
    @merchant.title.should == "迷尚澳门豆捞（鹭岛店）"
    @merchant.address.should == "武侯区鹭岛路21号"
  end
  
end
