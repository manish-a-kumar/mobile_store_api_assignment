class SpecificationSerializer < ActiveModel::Serializer
  attributes :id, :camera, :processor, :ram, :storage, :battery, :os_type
  has_one :devices
end
