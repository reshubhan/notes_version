require 'rails_helper'

RSpec.describe "versions/new", type: :view do
  before(:each) do
    assign(:version, Version.new(
      :title => "MyString",
      :body => "MyText",
      :active => false,
      :note_id => 1
    ))
  end

  it "renders new version form" do
    render

    assert_select "form[action=?][method=?]", versions_path, "post" do

      assert_select "input#version_title[name=?]", "version[title]"

      assert_select "textarea#version_body[name=?]", "version[body]"

      assert_select "input#version_active[name=?]", "version[active]"

      assert_select "input#version_note_id[name=?]", "version[note_id]"
    end
  end
end
