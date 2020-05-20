class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :team_name
      t.string :team_img
      t.string :area
      t.string :level

      t.timestamps
    end
  end
end
