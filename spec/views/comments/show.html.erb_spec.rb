require 'spec_helper'

describe "comments/show" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :type => "Type",
      :content => "Content",
      :votes => 1,
      :snippet => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    rendered.should match(/Content/)
    rendered.should match(/1/)
    rendered.should match(//)
  end
end
