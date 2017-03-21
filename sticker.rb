# sticker.rb            スタンプをpush送信するサンプル
require "line/bot"

require_relative "./env.rb"

user_id = AOYAMA_USER_ID

# スタンプのリスト
# https://devdocs.line.me/files/sticker_list.pdf

client.push_message(user_id, [{
  type: "sticker",
  packageId: "4",
  stickerId: "632",
}])
