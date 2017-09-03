class RemoveUserIdFromMessages < ActiveRecord::Migration[5.1]
  def change
    remove_index :messages, :user_id
    remove_column :messages, :user_id, :string
  end
end
