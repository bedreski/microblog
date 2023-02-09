class Status < ApplicationRecord
  belongs_to :user
  has_many :media 

  validates :body, presence:true, length: { maximum: 300 }
  validates :media, length: { maximum: 4, message: "Status can have a maximum of 4 media" }
end
