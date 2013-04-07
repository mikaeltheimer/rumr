class Bubble < ActiveRecord::Base
  attr_accessible :description, :name
  acts_as_taggable

  has_many :bubblings
  has_many :rumors, through: :bubblings

  validates :description, length: { maximum: 300 }
  validates :name, presence: true, length: { maximum: 50 }

  def tags
    self.tag_list.join(" ")
  end

  searchable do
  	text :name, :description, :tag_list
  end
end
