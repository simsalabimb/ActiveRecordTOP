class User < ApplicationRecord
    has_many :posts
    has_many :comments

    validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }, presence: true, length: { minimum: 2 }, uniqueness: true

end
