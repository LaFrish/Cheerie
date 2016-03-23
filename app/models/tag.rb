class Tag < ActiveRecord::Base
  belongs_to :posts
  belongs_to :feelings
  belongs_to :cheerups
end
