class MyselfController < ApplicationController
  before_action :authenticate_user!

  layout 'userlogin', only: :show

  def index
    @users = User.where(is_admin: true)
  end

  def show
    @user = User.find(params[:id])
  end

  # private
end
