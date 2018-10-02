class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.text :meta_desc
      t.text :meta_keys
      t.text :slug

      t.timestamps
    end
  end
end
