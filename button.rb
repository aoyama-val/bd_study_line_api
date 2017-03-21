# button.rb        ボタンを送信するサンプル
require "line/bot"

require_relative "./env.rb"

user_id = AOYAMA_USER_ID

client.push_message(user_id, {
  "type": "template",
  "altText": "this is a buttons template",
  "template": {
      "type": "buttons",
      "thumbnailImageUrl": "https://aosho235.com/bartender.jpg",
      "title": "メニューだ",
      "text": "好きなのを選んでくれ",
      "actions": [
          {
            "type": "uri",
            "label": "丸の内",
            "uri": "https://skybrain.ekispert.jp/viewer/index/marunouchi"
          },
          {
            "type": "uri",
            "label": "日本橋",
            "uri": "https://skybrain.ekispert.jp/viewer/index/nihonbashi"
          },
          {
            "type": "postback",
            "label": "それ以外",
            "data": "action=other"
          }
      ]
  }
})
