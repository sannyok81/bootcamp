class AddLinkToAdminProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_products, :link, :string
  end
end
