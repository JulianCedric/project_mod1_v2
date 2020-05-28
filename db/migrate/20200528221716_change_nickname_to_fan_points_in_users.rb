class ChangeNicknameToFanPointsInUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :nickname, :fan_points
    change_column :users, :fan_points, :integer
  end
end
