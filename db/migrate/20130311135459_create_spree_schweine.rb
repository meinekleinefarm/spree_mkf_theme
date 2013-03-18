class CreateSpreeSchweine < ActiveRecord::Migration
  def up
    create_table :spree_schweine, :force => true do |t|
      t.string :name
      t.text :description
      t.date :date_of_birth
      t.date :date_of_death
      t.integer :weight
      t.string :meta_keywords
      t.string :meta_description
      t.datetime :deleted_at
      t.string :permalink
      t.timestamps
    end
  end

  def down
    drop_table :spree_schweine
  end
end
