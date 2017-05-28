class Contact < ApplicationRecord
  validates :name, :email, :message, presence: { message: "You need to fill all the fields!" }
end
