class MyselfController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = User.find(user_id_getted)
  end

  private

  def user_id_getted
    params[:id] || 1
  end
end
