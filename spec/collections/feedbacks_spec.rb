describe "Feedbacks Collection init" do
  
  before do
    json = File.read File.expand_path("sample/feedbacks.json".resource)
    @feedbacks = Feedbacks.new json
  end
  
  it "gets feedbacks objects" do
    @feedbacks.models.count.should == 4
    @feedback = @feedbacks.models.first
    @feedback.category.should == 0
    @feedback.content.should == "电梯渗水小区问题正在解决开发商派施工队。"
  end
  
end
