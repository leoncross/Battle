
feature 'Testing forms' do
  scenario 'Can accept two names on the page' do
    sign_in_and_play
    expect(page).to have_content 'player_1'
    expect(page).to have_content 'player_2'

  end
end
