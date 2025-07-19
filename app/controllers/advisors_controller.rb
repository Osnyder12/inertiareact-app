class AdvisorsController < ApplicationController
  def index
    advisors = Advisor.AdvisorsController
    render inertia: 'Advisors', props: {
      advisors: advisors
    }
  end
end