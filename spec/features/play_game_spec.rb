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

  scenario 'computer chooses a weapon' do
    allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
    click_button "Paper"
    expect(page).to have_content "Computer chose Rock!"
  end
end
