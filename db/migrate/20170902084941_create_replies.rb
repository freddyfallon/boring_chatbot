class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|

      t.timestamps
    end
  end
end
