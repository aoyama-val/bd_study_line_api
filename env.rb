LINE_CHANNEL_SECRET = 'e30f47a76a61beef2e35f7d410f8805a'
LINE_CHANNEL_TOKEN  = 'NrHvkEPG+Muz7aGwhnVqjllaqki31Z2wQg3Wo8F3KWPf24vlc92rNHnk86I7U7FHKFMirhxuozN3/bAaIdIr9J4hecpVqJ+yCPCUv5dXizLDJc2uYjZjhGwB1i4aBq0txkXTpXP21QCFpK4Hej6B4AdB04t89/1O/w1cDnyilFU='

AOYAMA_USER_ID = "U2a12d5b95aaf20a28864106917627be0"

# LINE APIのクライアントオブジェクトを返す
def client
  @client ||= Line::Bot::Client.new { |config|
    config.channel_secret = LINE_CHANNEL_SECRET
    config.channel_token = LINE_CHANNEL_TOKEN
  }
end
