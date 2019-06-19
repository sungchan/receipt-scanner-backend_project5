class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :profile_url, :password
end
