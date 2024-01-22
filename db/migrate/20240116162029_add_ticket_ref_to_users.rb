class AddTicketRefToUsers < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :ticket, null: true, foreign_key: true
  end
end
