# get_profile.rb        ユーザーIDからプロフィールを取得するサンプル

require "line/bot"

require_relative "./env.rb"

def get_profile(client, user_id)
  response = client.get_profile(user_id)

  case response
  when Net::HTTPSuccess then
    contact = JSON.parse(response.body)
    return {
      display_name:   contact['displayName'],
      picture_url:    contact['pictureUrl'],
      status_message: contact['statusMessage'],
    }
  else
    raise "#{response.code} #{response.body}"
  end
end

user_id = AOYAMA_USER_ID
p get_profile(client, user_id)
