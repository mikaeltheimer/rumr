class Rumor < ActiveRecord::Base
  attr_accessible :content, :title, :bubble_list

  # has_and_belongs_to_many :bubbles
  has_many :bubblings
  has_many :bubbles, through: :bubblings

  validates :title, presence: true, length: { maximum: 30 }
  validates :content, presence: true, length: { maximum: 300 }
  # validates :bubble_id, presence: true

  def self.bubbled_with(name)
  	Bubble.find_by_name!(name).rumors
  end

  def self.bubble_counts
  	Bubble.select("bubbles.*, count(bubblings.bubble_id) as count").
  	joins(:bubblings).group("bubblings.bubble_id")
  end

  def bubble_list
  	bubbles.map(&:name).join(", ")
  end

  def bubble_list=(names)
  	self.bubbles = names.split(",").map do |n|
  		Bubble.where(name: n.strip).first_or_create!
  	end
  end
end
