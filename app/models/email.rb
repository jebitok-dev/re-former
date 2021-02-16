class Email < ApplicationRecord
    belongs_to :user
    belongs_to :password

    validates :email, presence: true, length: { maximum: 30 }
end
