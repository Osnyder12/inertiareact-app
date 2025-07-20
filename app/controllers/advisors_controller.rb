class AdvisorsController < ApplicationController
  def index
    advisors = Advisor.all
    render inertia: 'Advisors', props: {
      advisors: advisors
    }
  end
end