class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users,id: false do |t|
      t.string :id
      t.string :name
      t.string :username
      t.string :password_digest
      t.timestamps
    end
  end
end
