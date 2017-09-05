class AddStageToReplies < ActiveRecord::Migration[5.1]
  def change
    add_column :replies, :stage, :string
    add_column :replies, :integer, :string
  end
end
