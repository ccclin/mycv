class Admin::CvsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required

  def show
  end
end
