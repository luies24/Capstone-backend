class User < ApplicationRecord
    has_many :activity
    has_secured_password
end
