require 'spec_helper'

describe "comments/edit" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :type => "",
      :content => "MyString",
      :votes => 1,
      :snippet => nil
    ))
  end

  it "renders the edit comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do
      assert_select "input#comment_type[name=?]", "comment[type]"
      assert_select "input#comment_content[name=?]", "comment[content]"
      assert_select "input#comment_votes[name=?]", "comment[votes]"
      assert_select "input#comment_snippet[name=?]", "comment[snippet]"
    end
  end
end
