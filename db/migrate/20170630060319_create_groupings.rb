class CreateGroupings < ActiveRecord::Migration
  def change
    create_table :groupings do |t|
      t.references :detail, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
