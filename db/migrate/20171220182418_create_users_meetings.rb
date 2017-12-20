class CreateUsersMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings_users, id: false do |t|
      t.belongs_to :meeting, index: true
      t.belongs_to :user, index: true
    end
  end
end
