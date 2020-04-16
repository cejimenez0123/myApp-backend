class PageUserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id,:page_id
end
