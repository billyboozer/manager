class Widget < ActiveRecord::Base
  attr_accessible :color, :description, :name, :size, :box_id
  belongs_to :box
  validates :name, :presence => true
  validates_length_of :name, minimum: 3
  validates :size, numericality: true		
end
