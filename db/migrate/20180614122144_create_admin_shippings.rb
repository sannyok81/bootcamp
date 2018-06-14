class CreateAdminShippings < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_shippings do |t|
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
