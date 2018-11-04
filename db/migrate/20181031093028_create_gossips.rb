class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string "anonymous_gossiper"
      t.text "content"
      t.timestamps
    end
  end
end
