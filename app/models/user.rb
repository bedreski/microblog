class User < ApplicationRecord

  validates :handle, presence: true, #"check if the value is either nil or a blank string, that is, a string that is either empty or consists of whitespace" [Rails Guides]
            length: { in: 4..12 }, 
            uniqueness: true, 
            format: {
              with: /\A[\w]+\z/,
              message: "only allows number, letters and underscore"
            }

  validates :display_name, presence: true, 
            length: {
              minimum: 1, 
              maximum: 30
            }
  
  validates :bio, length: {maximum: 300}

  validates :born_at, presence: true

end
