# frozen_string_literal: true

module Admin
  module Operations
    class MifflinsController < BaseController
      def index
        @patient = Patient.find(params[:patient_id])
      end
    end
  end
end
