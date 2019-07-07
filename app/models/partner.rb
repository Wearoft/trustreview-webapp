class Partner < ApplicationRecord
  belongs_to :sector
  has_many :reviews

  def starts
    reviews.average(:starts) || 0
  end

  def image
    "http://lorempixel.com/400/200/food/#{id - 9}"
  end

end
