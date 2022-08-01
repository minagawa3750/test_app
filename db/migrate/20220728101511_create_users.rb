class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :title
      t.datetime :start_day
      t.datetime :fnisih_day
      t.boolean :free_check
      t.datetime :updated_at
      t.datetime :created_at
      t.string :memo

      t.timestamps
    end
  end
end
