require 'spec_helper'

feature "Name input" do
  scenario "Players submit their names" do
    visit('/')
    fill_in :name_01, :with => "Sam"
    fill_in :name_02, :with => "Stefan"
    # find('input[value="submit"]').click
    click_button "submit"
    expect(page).to have_content "It's Sam vs. Stefan!"
  end
end