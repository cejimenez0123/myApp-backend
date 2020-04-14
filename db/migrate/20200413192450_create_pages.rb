class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages, id: false do |t|
      t.string :id
      t.text :text
      t.string :userid
      t.timestamps
    end
  end
end
