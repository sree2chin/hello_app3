class AddLocationTypeToMicroposts < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :location, :string
    add_column :microposts, :typeofpost, :string
  end
end
