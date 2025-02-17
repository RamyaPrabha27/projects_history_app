require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  include Devise::Test::ControllerHelpers
  let(:user) { create(:user) }
  let(:project) { create(:project, user: user) }

  before do
    sign_in user  # Sign in the user
  end

  it "updates project status" do
    put :update, params: { id: project.id, project: { status: "in_progress" } }
    expect(project.reload.status).to eq("in_progress")
  end
end
