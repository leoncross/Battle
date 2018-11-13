
feature 'Testing forms' do
  scenario 'Can accept two names on the page' do
    visit('/')
    fill_in('player1', with: 'Leon')
    fill_in('player2', with: 'Jo')
    expect(page).to have_content 'Player 1: Leon, Player 2 = Jo'
  end
end
