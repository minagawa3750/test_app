class RenameFnisihDayColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :fnisih_day, :finish_day
  end
end
