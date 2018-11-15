
feature 'Attacking' do

  scenario 'attack player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'player_1 attacked player_2'
  end

  scenario 'attack player 1' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Attack'
    expect(page).to have_content 'player_2 attacked player_1'
  end

  scenario 'player 2 dies' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Attack'
    click_link 'Attack'
    click_link 'Attack'
    click_link 'Attack'

    expect(page).to have_content 'player_1 has won'
  end


end
