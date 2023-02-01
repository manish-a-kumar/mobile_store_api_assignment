class Device < ApplicationRecord
  belongs_to :brand
  has_one :specification, dependent: :destroy
end
