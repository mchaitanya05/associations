require "test_helper"

class AppointementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appointement = appointements(:one)
  end

  test "should get index" do
    get appointements_url
    assert_response :success
  end

  test "should get new" do
    get new_appointement_url
    assert_response :success
  end

  test "should create appointement" do
    assert_difference('Appointement.count') do
      post appointements_url, params: { appointement: { Patient_id: @appointement.Patient_id, Physician_id: @appointement.Physician_id, appointment_date: @appointement.appointment_date } }
    end

    assert_redirected_to appointement_url(Appointement.last)
  end

  test "should show appointement" do
    get appointement_url(@appointement)
    assert_response :success
  end

  test "should get edit" do
    get edit_appointement_url(@appointement)
    assert_response :success
  end

  test "should update appointement" do
    patch appointement_url(@appointement), params: { appointement: { Patient_id: @appointement.Patient_id, Physician_id: @appointement.Physician_id, appointment_date: @appointement.appointment_date } }
    assert_redirected_to appointement_url(@appointement)
  end

  test "should destroy appointement" do
    assert_difference('Appointement.count', -1) do
      delete appointement_url(@appointement)
    end

    assert_redirected_to appointements_url
  end
end
