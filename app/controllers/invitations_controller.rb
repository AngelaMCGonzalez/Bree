class InvitationsController < ApplicationController
  before_action :set_invitation, only: %i[ show edit update destroy ]

  def index
    @invitations = Invitation.all
  end

  def show; end

  def new
    @invitation = Invitation.new
  end

  def edit; end

  def create
    @invitation = Invitation.new(invitation_params)
    if @invitation.save
      redirect_to root_path, notice: 'Invitation was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @invitation.update(invitation_params)
      redirect_to @invitation, notice: 'Invitation was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @invitation.destroy
    redirect_to invitations_url, notice: 'Invitation was successfully destroyed.'
  end

  private
    def set_invitation
      @invitation = Invitation.find(params[:id])
    end

    def invitation_params
      params.require(:invitation).permit(:name, :email, :city, :nutrition_professional)
    end
end
