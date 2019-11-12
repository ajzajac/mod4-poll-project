class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :admin
  end