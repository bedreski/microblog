require 'addressable/uri'

class Medium < ApplicationRecord
  belongs_to :status

  validates :url, format: { with: URI::DEFAULT_PARSER.make_regexp }, allow_blank: true

  enum :kind, image: 0, video: 1
end
