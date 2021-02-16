class Password < ApplicationRecord
    belongs_to :user
    belongs_to :email

    validates :password, presence: true, length: {minimum: 8}
end
