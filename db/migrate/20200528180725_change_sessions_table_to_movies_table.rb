class ChangeSessionsTableToMoviesTable < ActiveRecord::Migration[6.0]
  def change
      rename_table :sessions, :movies 
  end
end
