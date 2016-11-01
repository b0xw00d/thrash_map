class Skatespot < ActiveRecord::Base
  validates :title, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true

  geocoded_by      :full_street_address
  after_validation :geocode

  def full_street_address
    "#{address}, #{city}, #{state}, #{zip}"
  end
end
