feature 'Register name' do
  scenario 'submit name and see it' do
    register_name
    expect(page).to have_content 'Hello, Alice'
  end
end
