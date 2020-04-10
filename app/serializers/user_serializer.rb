class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id,:name,:username,:password
end
