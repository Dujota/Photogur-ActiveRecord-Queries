class Picture < ApplicationRecord

  validates :artist, :title, :url, presence: true
  validates :title, length: { minimum: 2, maximum: 20 }
  validates :url, uniqueness: true
  
  def self.newest_first
    Picture.order("created_at DESC")
  end

  def self.most_recent_five
    Picture.newest_first.limit(5)
  end

  def self.created_before(time)
    Picture.where("created_at < ?", time)
  end

  def self.pictures_created_in_year(_year)
    Picture.where("created_at LIKE ?", '%#{ year }%')
  end

  def self.show_year
    Picture.all.map { |picture| picture.created_at.year }.uniq!

    # alt using pluck
    # Picture.uniq.pluck("strftime('%Y', created_at)")

  end
end
