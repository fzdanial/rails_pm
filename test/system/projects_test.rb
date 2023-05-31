require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "should create project" do
    visit projects_url
    click_on "New project"

    fill_in "Enddate", with: @project.enddate
    fill_in "Name", with: @project.name
    fill_in "Remark", with: @project.remark
    fill_in "Startdate", with: @project.startdate
    fill_in "Status", with: @project.status
    fill_in "Task", with: @project.task
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "should update Project" do
    visit project_url(@project)
    click_on "Edit this project", match: :first

    fill_in "Enddate", with: @project.enddate
    fill_in "Name", with: @project.name
    fill_in "Remark", with: @project.remark
    fill_in "Startdate", with: @project.startdate
    fill_in "Status", with: @project.status
    fill_in "Task", with: @project.task
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "should destroy Project" do
    visit project_url(@project)
    click_on "Destroy this project", match: :first

    assert_text "Project was successfully destroyed"
  end
end
