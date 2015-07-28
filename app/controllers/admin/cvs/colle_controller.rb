class Admin::Cvs::ColleController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required

  def new
    @colle = current_user.colles.new
  end

  def create
    colle = current_user.colles.new(colle_params)
    if colle.save
      redirect_to admin_cvs_path
    else
      render :new
    end
  end

  private

  def colle_params
    params.require(:colle).permit(:name, :context, :website)
  end
end
