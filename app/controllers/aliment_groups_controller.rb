# frozen_string_literal: true

class AlimentGroupsController < ApplicationController
  def index
    @aliments = load_aliments

    render layout: false
  end

  private

  def load_aliments
    group = params[:group].presence.to_s

    Aliment.where(group_name: group)
  end
end
