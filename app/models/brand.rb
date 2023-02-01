class Brand < ApplicationRecord
    has_many :devices, dependent: :destroy
end
