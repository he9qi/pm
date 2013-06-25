describe "Merchants Collection init" do
  
  before do
    json = File.read File.expand_path("sample/merchants.json".resource)
    @merchants = Merchants.new json
  end
  
  it "gets service objects" do
    @merchants.models.count.should == 4
    @merchant = @merchants.models.first
    @merchant.category.should == 0
    @merchant.title.should == "迷尚澳门豆捞（鹭岛店）"
    @merchant.address.should == "武侯区鹭岛路21号"
  end
  
end
