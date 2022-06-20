class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be valid mailid"}

    def owner?
        user_type == 1
    end
end
