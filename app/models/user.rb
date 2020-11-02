class User < ApplicationRecord
    has_many :activity
    has_secure_password
end
