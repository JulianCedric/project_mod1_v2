class CreateVillains < ActiveRecord::Migration[6.0]
  def change
    create_table :villains do |t|
      t.string :name 
      t.string :superpower 
      t.integer :suit_id
    end 
  end
end
