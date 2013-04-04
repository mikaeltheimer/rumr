class Bubbling < ActiveRecord::Base
  belongs_to :bubble
  belongs_to :rumor
  # attr_accessible :title, :body
end
