feature 'Register name' do
  scenario 'submit name and see it' do
    visit '/'
    fill_in :name, with: "Alice"
    click_button "Submit"
    expect(page).to have_content 'Hello, Alice'
  end
end
