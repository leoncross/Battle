
feature 'Attacking' do

  scenario 'attack player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Leon attacked Alfred'
  end
end
