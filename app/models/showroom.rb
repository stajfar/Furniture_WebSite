class Showroom < ActiveRecord::Base
  attr_accessible :s_address, :s_city, :s_email, :s_fax, :s_opening, :s_pic, :s_tel, :s_title

  has_and_belongs_to_many :products

end
