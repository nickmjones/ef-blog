class ChangeQuestionBodyToText < ActiveRecord::Migration[5.2]
  def change
    change_column :questions, :body, :text
  end
end
