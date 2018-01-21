class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.string :title
      t.text :description
      t.references :city, foreign_key: false
      t.references :user, foreign_key: false
      t.references :interest, foreign_key: false
      t.datetime :date_time_start
      t.datetime :date_time_finish
      t.string :address
      t.string :image

      t.timestamps
    end
  end
end
