describe "Service Init" do
  
  before do
    json = File.read File.expand_path("sample/service.json".resource)
    @service = Service.new json
  end

  it "parses json to service" do
    @service.category.should == 0
    @service.content.should == "现有清洁工一名，女，29岁。"
    @service.category_in_icon_name.should == "icon_clean"
  end
  
end
