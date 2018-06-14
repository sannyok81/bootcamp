class CreateAdminInspirations < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_inspirations do |t|
      t.string :link
      t.string :image
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
