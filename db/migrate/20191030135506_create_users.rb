class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.datetime :create_at
      t.datetime :updated_at
      t.string :password_digest
      t.string :rememrber_digest
      t.timestamps
    end
  end
end
