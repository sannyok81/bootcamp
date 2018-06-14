class CreateAdminProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_products do |t|
      t.string :image
      t.float :price
      t.string :title

      t.timestamps
    end
  end
end
