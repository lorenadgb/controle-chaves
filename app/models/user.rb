class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def admin?
   self.role == Roles::ADMIN ? true : false
  end

  def guest?
    self.role == Roles::GUEST ? true : false
  end

  def manager?
    self.role == Roles::MANAGER ? true : false
  end
end
