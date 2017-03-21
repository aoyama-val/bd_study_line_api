require "line/bot"

require_relative "./env.rb"

user_id = AOYAMA_USER_ID

profile = get_profile(client, user_id)

client.push_message(user_id, {
  type: "text",
  text: "#{profile[:display_name]}うじ、pushでござるよ。ニンニン"
})

