def fill_names_and_submit
  visit('/')
  fill_in :player_1_name, with: 'Bevin'
  fill_in :player_2_name, with: 'Ninny'
  click_button 'Submit'
end
