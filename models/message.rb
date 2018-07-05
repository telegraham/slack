class Message

  @@all = []

  attr_reader :sender, :channel

  def initialize(args)
    @sender = args[:sender]
    @channel = args[:channel]
    @text = args[:text]
    @time_sent = Time.now
    @@all << self
  end

  def self.all
    @@all
  end


end
