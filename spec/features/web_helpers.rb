def sign_in_and_play
  visit('/')
  fill_in :name_01, :with => "Sam"
  fill_in :name_02, :with => "Stefan"
  click_button "submit"
end
