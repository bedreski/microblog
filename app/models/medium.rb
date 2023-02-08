class Medium < ApplicationRecord
  belongs_to :status

  #a media needs a status to exist
  validates :kind, presence: true 
  validate :url do 

    errors.add(:url, 'invalid URL') unless :url.blank? 

    valid_url = URI.parse(:url)

    errors.add(:url, 'cannot find link host') unless valid_url
    errors.add(:url, 'https only') unless valid_url.scheme = 'https'
  end 

  validates get_media_type(:url)

  #looks like mess
  def get_media_type(url) 
    type = url.path[-3..-1]
    
    if type.eql? 'jpg' || 'gif' || 'png' || 'svg' 
      :kind = 1
      return true
    elsif type.eql? 'mp4' || 'avi' || 'mkv' 
      :kind = 2
      return true
    else 
      errors.add(:kind, 'unsupported media format')
      return false
  end 

end
