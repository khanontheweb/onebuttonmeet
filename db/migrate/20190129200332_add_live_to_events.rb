class AddLiveToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :live, :boolean
  end
end
