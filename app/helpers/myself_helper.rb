module MyselfHelper
  def user_data_find(user)
    user.try(:info).try(:name) || user.email
  end
end
