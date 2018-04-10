class Product < ActiveRecord::Base
  attr_accessible :pr_desc, :pr_designer, :pr_major, :pr_name, :pr_pic1,  :pr_pic2, :pr_pic3, :pr_pic4, :pr_pic5, :pr_pic6, :pr_pic7, :pr_pic8, :pr_style, :pr_top, :pr_usage ,:showroom_ids ,:designer_id

  has_and_belongs_to_many :showrooms

  belongs_to :designer
end
