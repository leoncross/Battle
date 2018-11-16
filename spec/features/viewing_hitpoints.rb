
feature 'Testing hit point values' do
  scenario 'Player 2 has a hit point value' do
    sign_in_and_play
    expect(page).to have_content 'player_2 (30hp)'
  end

  scenario 'Player 2 has lost hit points on attack' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'player_2 lost 10hp'
  end
end
