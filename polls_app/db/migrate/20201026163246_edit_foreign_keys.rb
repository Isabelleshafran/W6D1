class EditForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_column :responses, :user_id, :integer, null: false
    add_column :responses, :answer_choice_id, :integer, null: false 
    add_column :polls, :author_id, :integer, null: false 
  end
end