class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :d_name
      t.string :d_desc
      t.string :d_pic

      t.timestamps
    end
  end
end
