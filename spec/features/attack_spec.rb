# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature 'Attacking' do
  scenario 'attack Player 2' do
    fill_names_and_submit
    click_link 'Attack'
    expect(page).to have_content 'Bevin attacked Ninny'
  end
end
