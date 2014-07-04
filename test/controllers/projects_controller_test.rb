require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { account_manager: @project.account_manager, budget_days: @project.budget_days, client_id: @project.client_id, client_project_manager: @project.client_project_manager, client_sponsor: @project.client_sponsor, client_technical_lead: @project.client_technical_lead, complexity_score: @project.complexity_score, estimated_desktop_count: @project.estimated_desktop_count, estimated_server_count: @project.estimated_server_count, expense_policy: @project.expense_policy, license_type: @project.license_type, primary_location: @project.primary_location, products: @project.products, progress_summary: @project.progress_summary, project_description: @project.project_description, project_end: @project.project_end, project_manager: @project.project_manager, project_name: @project.project_name, project_stage: @project.project_stage, project_start: @project.project_start, project_status: @project.project_status, project_type: @project.project_type, services: @project.services, technical_lead: @project.technical_lead, vendors: @project.vendors }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { account_manager: @project.account_manager, budget_days: @project.budget_days, client_id: @project.client_id, client_project_manager: @project.client_project_manager, client_sponsor: @project.client_sponsor, client_technical_lead: @project.client_technical_lead, complexity_score: @project.complexity_score, estimated_desktop_count: @project.estimated_desktop_count, estimated_server_count: @project.estimated_server_count, expense_policy: @project.expense_policy, license_type: @project.license_type, primary_location: @project.primary_location, products: @project.products, progress_summary: @project.progress_summary, project_description: @project.project_description, project_end: @project.project_end, project_manager: @project.project_manager, project_name: @project.project_name, project_stage: @project.project_stage, project_start: @project.project_start, project_status: @project.project_status, project_type: @project.project_type, services: @project.services, technical_lead: @project.technical_lead, vendors: @project.vendors }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
