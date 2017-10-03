class UserIdToDocs < ActiveRecord::Migration[5.1]
  def change
    add_column :docs, :user_id, :integer
  end
end
