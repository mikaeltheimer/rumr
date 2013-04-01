class Bubble < ActiveRecord::Base
  attr_accessible :description, :name, :tag_list
  acts_as_taggable

  # has_many :rumors, dependent: destroy

  validates :description, presence: true, length: { maximum: 300 }
  validates :name, presence: true, length: { maximum: 50 }
end
