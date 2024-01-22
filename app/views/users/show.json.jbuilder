# app/views/users/show.json.jbuilder
#json.id @user.id
#json.name @user.name
#json.email @user.email
# Add other attributes as needed
json.user do
  json.id @user.id
  json.name @user.name
  json.email @user.email
  json.created_at @user.created_at
  json.updated_at @user.updated_at
  #json.ticket_id @user.ticket_id if @user.ticket_id.present?
    puts "DEBUG: Ticket ID - #{@user.ticket_id}"
  #if @user.ticket
   # json.ticket do
    #  json.id @user.ticket.id
     # json.bus_name @user.ticket.bus_name
     # json.departure_date @user.ticket.departure_date
      # Add other ticket details as needed
    #end
  #else
   # json.ticket nil
  #end
end
