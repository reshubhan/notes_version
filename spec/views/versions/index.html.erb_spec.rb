require 'rails_helper'

RSpec.describe "versions/index", type: :view do
  before(:each) do
    assign(:versions, [
      Version.create!(
        :title => "Title",
        :body => "MyText",
        :active => false,
        :note_id => 2
      ),
      Version.create!(
        :title => "Title",
        :body => "MyText",
        :active => false,
        :note_id => 2
      )
    ])
  end

  it "renders a list of versions" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
