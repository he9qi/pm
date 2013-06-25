describe "Rents Collection init" do
  
  before do
    json = File.read File.expand_path("sample/rents.json".resource)
    @rents = Rents.new json
  end
  
  it "gets rent objects" do
    @rents.models.count.should == 4
    @rent = @rents.models.first
    @rent.category.should == 3
    @rent.content.should == "全城最低，大标间的房子小标间的价格，仅此一套，绝对不后悔1400元/套。"
  end
  
end
