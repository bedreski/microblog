require 'addressable/uri'

class Medium < ApplicationRecord
  belongs_to :status

  validates :kind, presence: true
  validates :url, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp }

end
