# frozen_string_literal: true

module Admin
  class CaloriesController < BaseController
    def edit
      @patient = Patient.find(params[:id])
    end

    def update; end
  end
end
