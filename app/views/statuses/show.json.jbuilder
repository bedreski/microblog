json.body @status.body
json.display_name @status.user.display_name
json.reply_peep true
if @status.replied_id.nil? 
  json.reply_peep false 
end 
