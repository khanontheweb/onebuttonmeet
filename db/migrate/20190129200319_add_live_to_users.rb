class AddLiveToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :live, :boolean
  end
end
