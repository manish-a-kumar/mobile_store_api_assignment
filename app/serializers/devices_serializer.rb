class DevicesSerializer < ActiveModel::Serializer
  attributes :id, :name_of_the_phone, :model_number, :specifications, :mrp, :selling_price, :availability, :status, :image, :imei_number

  belongs_to: brand
end
