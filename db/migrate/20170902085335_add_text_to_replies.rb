class AddTextToReplies < ActiveRecord::Migration[5.1]
  def change
    add_column :replies, :text, :string
  end
end
