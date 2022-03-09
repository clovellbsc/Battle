feature "Testing infrastructure" do
  scenario "Can run app and check page content" do
    visit("/")
    expect(page).to have_content "Testing infrastructure working!"
  end

  scenario "fill in name form" do
    visit("/")
    fill_in :player_one_name,	with: "George"
    fill_in :player_two_name, with: "Chris" 
    click_on "Submit"
    expect(page).to have_content('George vs Chris')
  end
end