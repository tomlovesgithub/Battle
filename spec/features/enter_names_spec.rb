# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

feature 'Players can enter names' do
  scenario 'and see them when battles starts' do
    fill_names_and_submit
    expect(page).to have_content 'Bevin vs. Ninny'
  end
end
