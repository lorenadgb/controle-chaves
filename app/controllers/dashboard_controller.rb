class DashboardController < ApplicationController
  before_action :authenticate_user!

  private

    def dashboard_params
      params.fetch(:dashboard, {})
    end
end
