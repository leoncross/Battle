
feature 'Testing forms' do
  scenario 'Can accept two names on the page' do
    sign_in_and_play
    expect(page).to have_content 'Leon'
    expect(page).to have_content 'Alfred'

  end
end
