class Artist < ActiveRecord::Base
  has_many :songs, dependent: :destroy
  validates :name, uniqueness: :true, presence: :true
  belongs_to :user
  validates :user, presence: :true
end



class Song < ActiveRecord::Base
  belongs_to :artist
  validates :artist, presence: true
  validates :title, presence: true
  belongs_to :user
  validates :user, presence: true
end
