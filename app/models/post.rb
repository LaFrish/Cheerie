class Post < ActiveRecord::Base
  belongs_to :cheerup,
    belongs_to :feeling
end
