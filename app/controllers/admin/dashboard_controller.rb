module Admin
  class DashboardController < ApplicationController
    def index
      render inertia: 'Admin/Dashboard', props: {
        name: params.fetch(:name, 'Dashboard'),
      }
    end
  end
end