class Rumor < ActiveRecord::Base
  attr_accessible :content, :title, :bubble_id

  # belongs_to :bubble

  # accepts_nested_attributes_for :bubble

  validates :title, presence: true, length: { maximum: 30 }
  validates :content, presence: true, length: { maximum: 300 }
  validates :bubble_id, presence: true
end
