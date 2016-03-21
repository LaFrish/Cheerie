class Feeling < ActiveRecord::Base
  has_many :boreds,
  has_many :hopelesses,
  has_many :sads,
  has_many :frustrateds,
  has_many :angries,
  has_many :seriouslies
end
