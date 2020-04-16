class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages, id: false do |t|
      t.string :id
      t.string :title
      t.text :text
      t.string :user_id
      t.timestamps
    end
  end
end
