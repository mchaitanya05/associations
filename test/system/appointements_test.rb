require "application_system_test_case"

class AppointementsTest < ApplicationSystemTestCase
  setup do
    @appointement = appointements(:one)
  end

  test "visiting the index" do
    visit appointements_url
    assert_selector "h1", text: "Appointements"
  end

  test "creating a Appointement" do
    visit appointements_url
    click_on "New Appointement"

    fill_in "Patient", with: @appointement.Patient_id
    fill_in "Physician", with: @appointement.Physician_id
    fill_in "Appointment date", with: @appointement.appointment_date
    click_on "Create Appointement"

    assert_text "Appointement was successfully created"
    click_on "Back"
  end

  test "updating a Appointement" do
    visit appointements_url
    click_on "Edit", match: :first

    fill_in "Patient", with: @appointement.Patient_id
    fill_in "Physician", with: @appointement.Physician_id
    fill_in "Appointment date", with: @appointement.appointment_date
    click_on "Update Appointement"

    assert_text "Appointement was successfully updated"
    click_on "Back"
  end

  test "destroying a Appointement" do
    visit appointements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Appointement was successfully destroyed"
  end
end
