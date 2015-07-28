class Admin::Cvs::MyselvesController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required

  def edit
    @myself = current_user.myself || current_user.build_myself
  end

  def update
    myself = current_user.myself || current_user.build_myself
    myself.update(myself_params)
    if myself.save
      redirect_to admin_cvs_path
    else
      render :edit
    end
  end

  private

  def myself_params
    params.require(:myself).permit(:context)
  end
end
