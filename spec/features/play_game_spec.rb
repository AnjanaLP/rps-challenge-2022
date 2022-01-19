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
    click_button "Paper"
    message = find(:css, '#computer_weapon').text
    expect(all_messages).to include message
  end

  def all_messages
    Computer::WEAPONS.map { |weapon| "Computer chose #{weapon}!" }
  end
end
