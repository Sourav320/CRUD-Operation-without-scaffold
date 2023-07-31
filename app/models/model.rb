class Model < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
# database_authenticable:- User can authenticate themselve set login password password. Password will be stored in database.
# registrable:- User can register themselves and can edit or delete their account.
# recoverible: user can reset their password and recover their account if they forget their credentials
# rememberable:- This module remembers a user’s sessions by saving the information in a browser cookie.
# validatable: This module provides validations for the user’s email and password fields. (For example, your application asks for the password to be at least six characters, even though you haven’t defined any custom validations in your model.)