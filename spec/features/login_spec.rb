feature "Registration" do
  scenario "A user can create an account and log in" do
    visit "/"

    click_link "Register"

    fill_in "Username", with: "huntanumba1"
    fill_in "Email", with: "hunter@example.com"
    fill_in "Password", with: "1234"

    click_button "Register"

    expect(page).to have_content "Thanks for signing up"
  end
end
