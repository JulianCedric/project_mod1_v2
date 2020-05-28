class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.string :name
      t.string :status
      t.integer :user_id
      t.integer :suit_id 
    end 
  end
end