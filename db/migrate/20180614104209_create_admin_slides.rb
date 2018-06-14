class CreateAdminSlides < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_slides do |t|
      t.string :image
      t.string :link
      t.string :button_label
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
