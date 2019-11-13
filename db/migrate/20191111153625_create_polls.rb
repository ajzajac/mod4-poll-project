class CreatePolls < ActiveRecord::Migration[6.0]
  def change
    create_table :polls do |t|
      t.string :message
      t.integer :user_id
      t.integer :yay
      t.integer :nay
      t.timestamps
    end
  end
end
