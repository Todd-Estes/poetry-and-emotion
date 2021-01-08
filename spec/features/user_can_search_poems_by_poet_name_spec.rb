require 'rails_helper'

describe "User can search poems by poet name" do
  it "to see a search form" do
    visit '/'

    fill_in :author, with: "Emily"
    click_button 'Get Poems'
    expect(current_path).to eq(search_path)
  end
end
