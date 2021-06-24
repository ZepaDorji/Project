require "application_system_test_case"

class UserprofilesTest < ApplicationSystemTestCase
  setup do
    @userprofile = userprofiles(:one)
  end

  test "visiting the index" do
    visit userprofiles_url
    assert_selector "h1", text: "Userprofiles"
  end

  test "creating a Userprofile" do
    visit userprofiles_url
    click_on "New Userprofile"

    fill_in "Address", with: @userprofile.address
    fill_in "Cid no", with: @userprofile.cid_no
    fill_in "Contact no", with: @userprofile.contact_no
    fill_in "Dob", with: @userprofile.dob
    fill_in "Email", with: @userprofile.email
    fill_in "Name", with: @userprofile.name
    fill_in "Users", with: @userprofile.users_id
    click_on "Create Userprofile"

    assert_text "Userprofile was successfully created"
    click_on "Back"
  end

  test "updating a Userprofile" do
    visit userprofiles_url
    click_on "Edit", match: :first

    fill_in "Address", with: @userprofile.address
    fill_in "Cid no", with: @userprofile.cid_no
    fill_in "Contact no", with: @userprofile.contact_no
    fill_in "Dob", with: @userprofile.dob
    fill_in "Email", with: @userprofile.email
    fill_in "Name", with: @userprofile.name
    fill_in "Users", with: @userprofile.users_id
    click_on "Update Userprofile"

    assert_text "Userprofile was successfully updated"
    click_on "Back"
  end

  test "destroying a Userprofile" do
    visit userprofiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userprofile was successfully destroyed"
  end
end
