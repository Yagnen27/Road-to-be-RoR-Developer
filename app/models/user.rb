class User < ApplicationRecord
  validates :first_name, :last_name, :contact, :email, :address, :city, :state, :pincode, presence: true
  validates :contact, :email, uniqueness: true

def name
  "#{first_name} #{last_name}".strip
end

def full_address
  "#{address}, #{city}, #{state} #{pincode}".strip
end
end
