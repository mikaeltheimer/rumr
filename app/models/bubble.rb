class Bubble < ActiveRecord::Base
  attr_accessible :description, :name

  validates :description, presence: true, length: { maximum: 300 }
  validates :name, presence: true, length: { maximum: 50 }
end
