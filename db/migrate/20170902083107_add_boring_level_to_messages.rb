class AddBoringLevelToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :boring_level, :integer
  end
end
