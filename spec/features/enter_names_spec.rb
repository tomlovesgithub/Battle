# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

feature 'Players can enter names' do
  scenario 'and see them when battles starts' do
    visit('/')
    fill_in :player_1_name, with: 'Bevin'
    fill_in :player_2_name, with: 'Ninny'
    click_button 'Submit'
    expect(page).to have_content 'Bevin vs. Ninny'
  end
end
