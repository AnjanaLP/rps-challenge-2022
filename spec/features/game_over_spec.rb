feature 'Game over' do
  before do
    register_name
    allow(Computer::WEAPONS).to receive(:sample).and_return("Scissors")
  end

  scenario 'see a win mesage if the player wins' do
    click_button "Rock"
    expect(page).to have_content "You win!"
  end

  scenario 'see a lose message if the computer wins' do
    click_button "Paper"
    expect(page).to have_content "You lose!"
  end

  scenario 'see a draw message if it is a draw' do
    click_button "Scissors"
    expect(page).to have_content "You draw!"
  end
end
