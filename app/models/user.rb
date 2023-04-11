class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,:invitable,
         :recoverable, :rememberable, :validatable, :timeoutable

  enum role: %w[user client lead]

end
