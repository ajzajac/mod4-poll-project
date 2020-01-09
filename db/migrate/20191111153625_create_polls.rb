class CreatePolls < ActiveRecord::Migration[6.0]
  def change
    create_table :polls do |t|
      t.string :message
      t.integer :user_id
      t.integer :yay
      t.integer :nay
      t.datetime :expiration
      t.string :option1
      t.string :option2
      t.timestamps
    end
  end
end
