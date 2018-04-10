class CreateShowroomsProductsJoin < ActiveRecord::Migration
  def up
    create_table 'products_showrooms', :id=> false do |t|
       t.column 'product_id', :integer
       t.column 'showroom_id', :integer
    end
  end

  def down
    drop_table 'products_showrooms'
  end
end
