class Admin::Cvs::EdubgController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required

  def new
    @edubg = current_user.edubgs.new
  end

  def create
    edubg = current_user.edubgs.new(edubg_params)
    if edubg.save
      redirect_to admin_cvs_path
    else
      render :new
    end
  end

  private

  def edubg_params
    params.require(:edubg).permit(:school_name, :major_name)
  end
end
