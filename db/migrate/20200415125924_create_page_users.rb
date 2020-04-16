class CreatePageUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :page_users,id: false do |t|
      t.integer :id
      t.string :user_id
      t.string :page_id
      t.timestamps
    end
  end
end
