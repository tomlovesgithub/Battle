# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'display hit points' do
  scenario 'each player can see' do
    fill_names_and_submit
    expect(page).to have_content 'Bevin vs. Ninny'
    expect(page).to have_content 'Ninny: 60HP'
  end
end
