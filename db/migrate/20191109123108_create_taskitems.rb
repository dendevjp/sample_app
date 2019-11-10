class CreateTaskitems < ActiveRecord::Migration[5.2]
  def change
    create_table :taskitems do |t|
      t.string :itemid
      t.string :itemstatus
      t.string :itemtitle
      t.string :itemdetail
      t.string :itemcharge

      t.timestamps
    end
  end
end
