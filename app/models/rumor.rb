class Rumor < ActiveRecord::Base
  attr_accessible :content, :title, :bubble_tokens
  attr_reader :bubble_tokens

  # has_and_belongs_to_many :bubbles
  has_many :bubblings
  has_many :bubbles, through: :bubblings

  validates :title, presence: true, length: { maximum: 30 }
  validates :content, presence: true, length: { maximum: 300 }
  validates :bubbles, presence: true
  # validates :bubble_id, presence: true

  def bubble_tokens=(ids)
    self.bubble_ids = ids.split(",")
  end
end
