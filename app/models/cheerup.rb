class Cheerup < ActiveRecord::Base
  belongs_to :feeling
  has_many :posts
  has_many :tags
end
