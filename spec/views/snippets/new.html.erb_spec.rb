require 'spec_helper'

describe "snippets/new" do
  before(:each) do
    assign(:snippet, stub_model(Snippet,
      :starttime => 1.5,
      :endtime => 1.5,
      :video => nil
    ).as_new_record)
  end

  it "renders new snippet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", snippets_path, "post" do
      assert_select "input#snippet_starttime[name=?]", "snippet[starttime]"
      assert_select "input#snippet_endtime[name=?]", "snippet[endtime]"
      assert_select "input#snippet_video[name=?]", "snippet[video]"
    end
  end
end
