def register_name
  visit '/'
  fill_in :player_name, with: "Alice"
  click_button "Submit"
end
