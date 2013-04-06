class Bubble < ActiveRecord::Base
  attr_accessible :description, :name, :tag_list
  acts_as_taggable

  has_many :bubblings
  has_many :rumors, through: :bubblings

  # has_and_belongs_to_many :rumors, dependent: destroy

  validates :description, length: { maximum: 300 }
  validates :name, presence: true, length: { maximum: 50 }
end
