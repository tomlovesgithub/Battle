# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

feature 'Once Attacked' do
  scenario 'reduces Player 2 HP' do
    fill_names_and_submit
    click_link 'Attack'  
    expect(page).to have_content 'Ninny: 50HP'
  end
end
