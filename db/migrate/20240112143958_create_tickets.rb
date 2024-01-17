class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bus, null: false, foreign_key: true
      t.references :route, null: false, foreign_key: true
      t.integer :seat_number

      t.timestamps
    end
  end
end
