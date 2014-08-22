require 'spec_helper'

describe "snippets/edit" do
  before(:each) do
    @snippet = assign(:snippet, stub_model(Snippet,
      :starttime => 1.5,
      :endtime => 1.5,
      :video => nil
    ))
  end

  it "renders the edit snippet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", snippet_path(@snippet), "post" do
      assert_select "input#snippet_starttime[name=?]", "snippet[starttime]"
      assert_select "input#snippet_endtime[name=?]", "snippet[endtime]"
      assert_select "input#snippet_video[name=?]", "snippet[video]"
    end
  end
end
