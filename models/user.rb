class User

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def send_message(channel, message_text)
    
    Message.new(channel: channel, sender: self, text: message_text)
    # Message.new([self, channel, message_text])
  end

end