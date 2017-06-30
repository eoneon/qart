class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :kind
      t.string :name

      t.timestamps null: false
    end
  end
end
