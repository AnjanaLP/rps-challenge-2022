feature 'Play the game' do
  before { register_name }

  scenario 'see the weapon choices' do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario 'player chooses a weapon' do
    click_button "Paper"
    expect(page).to have_content "You chose Paper!"
  end
end
