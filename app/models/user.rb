class User < ApplicationRecord
  has_secure_password

  validates :entity_email,  presence: true, format: { with: /\A.+@.+$\Z/ }, uniqueness: true
  validates :entity_name, presence: true

end
