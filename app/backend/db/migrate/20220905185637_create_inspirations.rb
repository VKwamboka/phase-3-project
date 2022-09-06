class CreateInspirations < ActiveRecord::Migration[6.1]
  def change
    create_table :inspirations do |t|
      t.string :title
      t.text :body
      t.integer :authors_id
      t.integer :categories_id
      t.timestamps
    end
  end
end
