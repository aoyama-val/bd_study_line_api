# app.rb                Webhookサーバのサンプル
require "sinatra"
require "sinatra/reloader"
require "line/bot"

require_relative "./env.rb"

set :bind, '0.0.0.0'

get "/" do
  "Hello, LINE world!"
end

post "/callback" do
  body = request.body.read

  puts body

  events = client.parse_events_from(body)
  events.each do |event|
    case event
    when Line::Bot::Event::Message
      text = event.message["text"]
      messages = [
        {
          type: "text",
          text: "なるほど、「#{text}」というわけでござるな。\nさすがはケンイチうじ（#{event['source']['userId']}）でござる。\n"
        }
      ]

      # 返信する
      client.reply_message(event["replyToken"], messages)
    end
  end

  "OK"
end
