class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.text :content
      t.datetime :match_day
      t.string :title
      t.integer :user_id
      t.string :vanue

      t.timestamps
    end
  end
end
