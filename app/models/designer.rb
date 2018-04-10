class Designer < ActiveRecord::Base
  attr_accessible :d_desc, :d_name, :d_pic

  has_many :products

  validates :d_name, :d_desc, :d_pic, :presence => true
  validates :d_name, :uniqueness => {:message => "Designer inserted before"}

end
