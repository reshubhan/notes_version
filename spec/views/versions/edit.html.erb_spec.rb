require 'rails_helper'

RSpec.describe "versions/edit", type: :view do
  before(:each) do
    @version = assign(:version, Version.create!(
      :title => "MyString",
      :body => "MyText",
      :active => false,
      :note_id => 1
    ))
  end

  it "renders the edit version form" do
    render

    assert_select "form[action=?][method=?]", version_path(@version), "post" do

      assert_select "input#version_title[name=?]", "version[title]"

      assert_select "textarea#version_body[name=?]", "version[body]"

      assert_select "input#version_active[name=?]", "version[active]"

      assert_select "input#version_note_id[name=?]", "version[note_id]"
    end
  end
end
