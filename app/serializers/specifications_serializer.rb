class SpecificationsSerializer < ActiveModel::Serializer
  attributes :id, :camera, :processor, :ram, :storage, :battery, :os_type
  belongs_to :device
end
