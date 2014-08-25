class AddInitiallyOnHand < ActiveRecord::Migration
  def up
    add_column :spree_variants, :initial_count_on_hand, :integer, default: 0
  end

  def down
    remove_column :spree_variants, :initial_count_on_hand
  end
end
