class Admin::Cvs::SkillController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required

  def new
    @skill = current_user.skills.new
  end

  def create
    skill = current_user.skills.new(skill_params)
    if skill.save
      redirect_to admin_cvs_path
    else
      render :new
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:name)
  end
end
