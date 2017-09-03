class RemoveUserIdFromReplies < ActiveRecord::Migration[5.1]
  def change
    remove_index :replies, :user_id
    remove_column :replies, :user_id, :string
  end
end
