class User < ApplicationRecord
  has_many :statuses
  
  validates :handle, presence: true, #"check if the value is either nil or a blank string, that is, a string that is either empty or consists of whitespace" [Rails Guides]
            length: { in: 4..12 }, 
            uniqueness: true, 
            format: {
              with: /\A[\w]+\z/,
              message: "only allows number, letters and underscore"
            }

  validates :display_name, presence: true, length: { maximum: 30 }
  validates :bio, length: { maximum: 300 }
  validates :born_at, presence: true
  validate :born_at do
    errors.add(:born_at, 'must be at least 13') unless born_at.nil? || born_at < Date.current - 13.years
  end 

end
