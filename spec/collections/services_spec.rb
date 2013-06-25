describe "Services Collection init" do
  
  before do
    json = File.read File.expand_path("sample/services.json".resource)
    @services = Services.new json
  end
  
  it "gets service objects" do
    @services.models.count.should == 4
    @service = @services.models.first
    @service.category.should == 0
    @service.content.should == "现有清洁工一名，女，29岁。"
  end
  
end
