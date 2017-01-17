require 'spec_helper'

feature "Name input" do
  scenario "Players submit their names" do
    sign_in_and_play
    expect(page).to have_content "It's Sam vs. Stefan!"
  end
end

feature "Hit points" do
  scenario "Player 1 sees Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content "Stefan: 100 hit points"
  end
end
