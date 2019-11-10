class AddDeletedAtToTaskitems < ActiveRecord::Migration[5.2]
  def change
    add_column :taskitems, :deleted_at, :datetime
    add_index :taskitems, :deleted_at
  end
end
