require 'rails_helper'


RSpec.describe Note, type: :model do
  before(:each) do
    @note = FactoryGirl.create(:note)
    @note.versions << FactoryGirl.create(:version)
    @note.versions <<  FactoryGirl.create(:version)
  end
  it "has 2 version" do
    expect(@note.versions.count).to eq(2)
  end
end
