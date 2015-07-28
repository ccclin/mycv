class Admin::Cvs::InfosController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required

  def edit
    @info = current_user.info || current_user.build_info
  end

  def update
    info = current_user.info || current_user.build_info
    info.update(info_params)
    if info.save
      redirect_to admin_cvs_path
    else
      render :edit
    end
  end

  private

  def info_params
    params.require(:info).permit(:name, :english_name, :phone, :address)
  end
end
