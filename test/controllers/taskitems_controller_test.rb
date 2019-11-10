require 'test_helper'

class TaskitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taskitem = taskitems(:one)
  end

  test "should get index" do
    get taskitems_url
    assert_response :success
  end

  test "should get new" do
    get new_taskitem_url
    assert_response :success
  end

  test "should create taskitem" do
    assert_difference('Taskitem.count') do
      post taskitems_url, params: { taskitem: { itemcharge: @taskitem.itemcharge, itemdetail: @taskitem.itemdetail, itemid: @taskitem.itemid, itemstatus: @taskitem.itemstatus, itemtitle: @taskitem.itemtitle } }
    end

    assert_redirected_to taskitem_url(Taskitem.last)
  end

  test "should show taskitem" do
    get taskitem_url(@taskitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_taskitem_url(@taskitem)
    assert_response :success
  end

  test "should update taskitem" do
    patch taskitem_url(@taskitem), params: { taskitem: { itemcharge: @taskitem.itemcharge, itemdetail: @taskitem.itemdetail, itemid: @taskitem.itemid, itemstatus: @taskitem.itemstatus, itemtitle: @taskitem.itemtitle } }
    assert_redirected_to taskitem_url(@taskitem)
  end

  test "should destroy taskitem" do
    assert_difference('Taskitem.count', -1) do
      delete taskitem_url(@taskitem)
    end

    assert_redirected_to taskitems_url
  end
end
