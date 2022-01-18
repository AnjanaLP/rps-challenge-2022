def register_name
  visit '/'
  fill_in :name, with: "Alice"
  click_button "Submit"
end
