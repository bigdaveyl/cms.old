describe "user sign in" do
  it "allows users to sign in after they have registered" do
    user = User.create(:email    => "alindeman@example.com",
                       :password => "ilovegrapes")

    visit "/users/sign_in"

    fill_in "Username",    :with => "alindeman@example.com"
    fill_in "Password", :with => "ilovegrapes"

    click_button "Log in"

    expect(page).to have_content("Signed in")
  end
end
