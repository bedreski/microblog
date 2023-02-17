json.array! @all_status do |status|
  json.body truncate(status.body, length: 150)
  json.full_body status.body if status.body.length > 150
  json.display_name status.user.display_name
  json.reply_peep true unless status.replied_id.nil?
end



