# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'display hit points' do
  scenario 'each player can see' do
    visit('/')
    fill_in :player_1_name, with: 'Bevin'
    fill_in :player_2_name, with: 'Ninny'
    click_button 'Submit'
    expect(page).to have_content 'Bevin vs. Ninny'
  end
end
