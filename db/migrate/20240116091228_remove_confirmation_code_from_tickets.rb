class RemoveConfirmationCodeFromTickets < ActiveRecord::Migration[7.1]
  def change
    remove_column :tickets, :confirmation_code, :string
  end
end
