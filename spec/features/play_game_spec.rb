feature 'Play the game' do
  scenario 'see the weapon choices' do
    register_name
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end
end
