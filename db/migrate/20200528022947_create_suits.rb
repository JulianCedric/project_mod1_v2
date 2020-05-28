class CreateSuits < ActiveRecord::Migration[6.0]
  def change
    create_table :suits do |t|
      t.string :model
      t.string :superpower 
    end 
  end
end
