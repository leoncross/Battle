
feature 'Testing forms' do
  scenario 'Can accept two names on the page' do
    visit('/')
    fill_in :player_1_name, with: 'Leon'
    fill_in :player_2_name, with: 'Jo'
    click_button 'Submit'
    expect(page).to have_content 'Leon vs. Jo'
  end
end
