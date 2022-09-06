class RemoveTheColumnCategory < ActiveRecord::Migration[6.1]
  def change
    remove_column :poems, :category, :string
  end
end
