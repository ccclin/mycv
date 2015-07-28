class Info < ActiveRecord::Base
  belongs_to :user

  validates :name,         presence: true
  validates :english_name, presence: true
  validates :phone,        presence: true
  validates :address,      presence: true
end
