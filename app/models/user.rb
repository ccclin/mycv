class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :info, dependent: :destroy
  has_many :edubgs
  has_many :jobbgs
  has_many :skills
  has_one :myself
  has_many :colles

  accepts_nested_attributes_for :info, :myself

  def admin?
    is_admin
  end
end
