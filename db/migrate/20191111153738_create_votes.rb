class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :poll_id
      t.integer :user_id
      t.string :option

      t.timestamps
    end
  end
end
