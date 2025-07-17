# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    render inertia: 'InertiaExample', props: {
      name: params.fetch(:name, 'World'),
    }
  end
end
