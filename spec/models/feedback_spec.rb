describe "Feedback Init" do
  
  before do
    json = File.read File.expand_path("sample/feedback.json".resource)
    @feedback = Feedback.new json
  end

  it "parses json to feedback" do
    @feedback.category.should == 0
    @feedback.content.should == "电梯渗水小区问题正在解决开发商派施工队。"
    # @rent.category_in_icon_name.should == "icon_clean"
  end
  
end
