# frozen_string_literal: true

module Admin
  class PatientsController < BaseController
    before_action :authenticate_user!
    before_action :set_patient, only: %i[show edit update destroy]

    def index
      @patients = Patient.all
    end

    def show; end

    def new
      @patient = Patient.new
    end

    def edit; end

    def create
      @patient = current_user.patients.new(patient_params)
      if @patient.save
        redirect_to admin_patients_path, notice: 'Patient was successfully created.'
      else
        render :new, status: :unprocessable_entity
      end
    end

    def update
      if @patient.update(patient_params)
        redirect_to admin_patients_path, notice: 'Patient was successfully updated.'
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @patient.destroy
      redirect_to patients_url, notice: 'Patient was successfully destroyed.'
    end

    private

    def set_patient
      @patient = Patient.find(params[:id])
    end

    def patient_params
      params.require(:patient).permit(:name, :email, :avatar, :user_id, :gender, :height, :physical_activity_factor,
                                      :weight, :age)
    end
  end
end
