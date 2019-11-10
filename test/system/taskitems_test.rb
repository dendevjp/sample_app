require "application_system_test_case"

class TaskitemsTest < ApplicationSystemTestCase
  setup do
    @taskitem = taskitems(:one)
  end

  test "visiting the index" do
    visit taskitems_url
    assert_selector "h1", text: "Taskitems"
  end

  test "creating a Taskitem" do
    visit taskitems_url
    click_on "New Taskitem"

    fill_in "Itemcharge", with: @taskitem.itemcharge
    fill_in "Itemdetail", with: @taskitem.itemdetail
    fill_in "Itemid", with: @taskitem.itemid
    fill_in "Itemstatus", with: @taskitem.itemstatus
    fill_in "Itemtitle", with: @taskitem.itemtitle
    click_on "Create Taskitem"

    assert_text "Taskitem was successfully created"
    click_on "Back"
  end

  test "updating a Taskitem" do
    visit taskitems_url
    click_on "Edit", match: :first

    fill_in "Itemcharge", with: @taskitem.itemcharge
    fill_in "Itemdetail", with: @taskitem.itemdetail
    fill_in "Itemid", with: @taskitem.itemid
    fill_in "Itemstatus", with: @taskitem.itemstatus
    fill_in "Itemtitle", with: @taskitem.itemtitle
    click_on "Update Taskitem"

    assert_text "Taskitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Taskitem" do
    visit taskitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Taskitem was successfully destroyed"
  end
end
