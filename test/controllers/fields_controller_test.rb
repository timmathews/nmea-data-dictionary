require 'test_helper'

class FieldsControllerTest < ActionController::TestCase
  setup do
    @field = fields(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fields)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create field" do
    assert_difference('Field.count') do
      post :create, field: { bit_pos: @field.bit_pos, byte_pos: @field.byte_pos, description: @field.description, length: @field.length, max_value: @field.max_value, min_value: @field.min_value, name: @field.name, offset: @field.offset, scaling: @field.scaling, signalk_path: @field.signalk_path, type: @field.type, units: @field.units }
    end

    assert_redirected_to field_path(assigns(:field))
  end

  test "should show field" do
    get :show, id: @field
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @field
    assert_response :success
  end

  test "should update field" do
    patch :update, id: @field, field: { bit_pos: @field.bit_pos, byte_pos: @field.byte_pos, description: @field.description, length: @field.length, max_value: @field.max_value, min_value: @field.min_value, name: @field.name, offset: @field.offset, scaling: @field.scaling, signalk_path: @field.signalk_path, type: @field.type, units: @field.units }
    assert_redirected_to field_path(assigns(:field))
  end

  test "should destroy field" do
    assert_difference('Field.count', -1) do
      delete :destroy, id: @field
    end

    assert_redirected_to fields_path
  end
end
