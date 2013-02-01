class Order < ActiveRecord::Base
  attr_accessible :name
  has_many :boxes
end
