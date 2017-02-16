require 'rails_helper'

RSpec.describe Version, type: :model do
  before(:each) do
  	@note = Note.create(:title => "test", :body => "body")
 	@version = Version.create(:title => "verion title", :body => "version body", :note_id => @note.id)
  end
  it "should  have note_id" do
    expect(@version.note_id).to eq(@note.id)
  end
end
