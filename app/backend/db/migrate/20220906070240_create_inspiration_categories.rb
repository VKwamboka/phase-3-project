class CreateInspirationCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :inspiration_categories do |t|
      t.string :name
      t.timestamps
    end
  end
end
