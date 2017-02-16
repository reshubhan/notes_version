require 'rails_helper'

RSpec.describe "versions/show", type: :view do
  before(:each) do
    @version = assign(:version, Version.create!(
      :title => "Title",
      :body => "MyText",
      :active => false,
      :note_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
  end
end
