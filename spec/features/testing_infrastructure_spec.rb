feature 'Test infrastructure' do
  scenario 'homepage displays welcome message' do
    visit '/'
    expect(page).to have_content "Welcome to RPS"
  end
end
