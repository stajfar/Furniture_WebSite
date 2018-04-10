class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :pr_name
      t.string :pr_desc
      t.string :pr_pic1
      t.string :pr_pic2
      t.string :pr_pic3
      t.string :pr_pic4
      t.string :pr_pic5
      t.string :pr_pic6
      t.string :pr_pic7
      t.string :pr_pic8
      t.string :pr_major
      t.string :pr_top
      t.string :pr_designer
      t.string :pr_style
      t.string :pr_usage


      t.timestamps
    end
  end
end
