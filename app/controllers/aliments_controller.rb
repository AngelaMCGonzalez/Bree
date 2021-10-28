# frozen_string_literal: true

class AlimentsController < ApplicationController
  def index; end

  def edit
    @aliment = Aliment.find(params[:id])
  end

  def update
    @aliment = Aliment.find(params[:id])

    if @aliment.update(aliment_params)
      redirect_to aliments_path, notice: 'Aliment updated successfully'
    else
      render :edit
    end
  end

  private

  def aliment_params
    params.require(:aliment).permit!
  end
end
