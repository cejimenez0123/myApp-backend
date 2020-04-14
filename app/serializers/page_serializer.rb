class PageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id,:text,:userid
end
