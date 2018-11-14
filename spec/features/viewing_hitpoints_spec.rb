
feature 'Testing hit point values' do
  scenario 'Player 2 has a hit point value' do
    sign_in_and_play
    expect(page).to have_content 'Alfred 100hp'
  end
end
