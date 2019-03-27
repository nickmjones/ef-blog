class AddHiddenFlagToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :is_included_in_index, :boolean, :default => 1
  end
end
