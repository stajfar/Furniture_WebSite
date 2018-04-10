class CreateShowrooms < ActiveRecord::Migration
  def change
    create_table :showrooms do |t|
      t.string :s_title
      t.string :s_city
      t.string :s_address
      t.string :s_email
      t.string :s_tel
      t.string :s_fax
      t.string :s_opening
      t.string :s_pic

      t.timestamps
    end
  end
end
