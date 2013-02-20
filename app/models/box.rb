class Box < ActiveRecord::Base
  attr_accessible :color, :material, :order_id
  belongs_to :order
  has_one :widget
end
