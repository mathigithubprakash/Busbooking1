class AddConfirmationCodeToTickets < ActiveRecord::Migration[7.1]
  def change
    add_column :tickets, :confirmation_code, :string
  end
end
