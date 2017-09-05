class AddStageToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :stage, :integer
  end
end
