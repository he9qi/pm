describe "Rent Init" do
  
  before do
    json = File.read File.expand_path("sample/rent.json".resource)
    @rent = Rent.new json
  end

  it "parses json to rent" do
    @rent.category.should == 0
    @rent.content.should == "全城最低，大标间的房子小标间的价格，仅此一套，绝对不后悔1400元/套。"
    # @rent.category_in_icon_name.should == "icon_clean"
  end
  
end
