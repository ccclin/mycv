module MyselfHelper
  def user_data_find(user)
    user.info.name || user.email
  end
end
