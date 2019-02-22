class User < ApplicationRecord
  rolify :before_add => :before_add_method #增加角色时，要做些什么
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  validates :name, presence: { message: "请填写姓名"}
  validates :name, uniqueness: { message: "已有其他用户使用该用户名"}

end
