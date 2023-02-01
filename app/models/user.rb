class User < ApplicationRecord

  validates :handle, presence: true, #"check if the value is either nil or a blank string, that is, a string that is either empty or consists of whitespace" [Rails Guides]
            length: {
              minimum: 4, 
              :too_short: "must have at least %{count} characters", 
              maximum: 12, "%{count} characters is the maximum allowed"
              :too_long: 
            }
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

  validates :born_at, presence: true, 
            numericality: { 
              less_than_or_equal_to: Date.current - 13, 
              message: "must be at least %{count}"
            }

end
