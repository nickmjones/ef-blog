class AddNameAndBioToAuthor < ActiveRecord::Migration[5.2]
  def change
    add_column :authors, :full_name, :string
    add_column :authors, :shortbio, :text
  end
end
