class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :contents
      t.integer :favorite, default: 0
      t.timestamps
    end
  end
end
