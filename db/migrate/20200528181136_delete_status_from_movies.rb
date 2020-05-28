class DeleteStatusFromMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :status, :string  
  end
end
