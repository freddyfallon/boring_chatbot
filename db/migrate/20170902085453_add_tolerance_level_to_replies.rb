class AddToleranceLevelToReplies < ActiveRecord::Migration[5.1]
  def change
    add_column :replies, :tolerance_level, :integer
  end
end
