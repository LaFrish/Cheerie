class Post < ActiveRecord::Base
  belongs_to :cheerups
  belongs_to :feeling
end
