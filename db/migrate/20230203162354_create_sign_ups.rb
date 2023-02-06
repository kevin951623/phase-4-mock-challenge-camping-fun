class CreateSignUps < ActiveRecord::Migration[6.1]
  def change
    create_table :sign_ups do |t|
      t.integer :id
      t.integer :camper_id
      t.integer :activity_id
      t.integer :time
      t.datetime :created_at
      t.datetime :update_at

      t.timestamps
    end
  end
end
