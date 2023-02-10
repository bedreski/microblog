class Status < ApplicationRecord
  belongs_to :user
  belongs_to :status, optional: true
  has_many :media, dependent: :destroy  
  has_many :replies, class_name: 'Status', foreign_key: :status_id 
  accepts_nested_attributes_for :media, limit: 4, allow_destroy: true 
  accepts_nested_attributes_for :replies, allow_destroy: true

  validates :body, presence: true, length: { maximum: 300 }
  validates :media, length: { maximum: 4, message: "Status can have a maximum of 4 media" }
end
