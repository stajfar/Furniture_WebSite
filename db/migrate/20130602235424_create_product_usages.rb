class CreateProductUsages < ActiveRecord::Migration
  def change
    create_table :product_usages do |t|
      t.string :pu_title
      t.string :pu_pic

      t.timestamps
    end
  end
end
