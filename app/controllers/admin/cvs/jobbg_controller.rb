class Admin::Cvs::JobbgController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required

  def new
    @jobbg = current_user.jobbgs.new
  end

  def create
    jobbg = current_user.jobbgs.new(jobbg_params)
    if jobbg.save
      redirect_to admin_cvs_path
    else
      render :new
    end
  end

  private

  def jobbg_params
    params.require(:jobbg).permit(:company_name, :work_name, :years)
  end
end
