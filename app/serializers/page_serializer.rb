class PageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id,:title,:text, :user_id
end
