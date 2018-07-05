class ChannelMembership

  @@all = []

  attr_reader :member, :channel

  #ChannelMembership.new(member: member, channel: channel)
  def initialize(args)
    @channel = args[:channel]
    @member = args[:member]
    @@all << self
  end

  # #ChannelMembership.new(member, channel)
  # def initialize(member, channel)
  #   @channel = channel
  #   @member = member
  # end

  def self.all
    @@all
  end


end