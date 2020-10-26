class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.string :polls, null: false 
      t.timestamps
    end
  end
end
