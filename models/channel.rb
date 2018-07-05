class Channel

  # attr_reader :channel

  def initialize(name)
    @name = name
    # @members = [] NOOOOOOO
  end

  def message_history
    Message.all.select do |message|
      message.channel == self
    end
  end

  def join(user)   
    ChannelMembership.new(member: user, channel: self)
  end

  def members
    selected_channel_memberships.map do |channel_membership|
     channel_membership.member
    end
  end

  private
  def selected_channel_memberships
    ChannelMembership.all.select do |channel_membership|
      channel_membership.channel == self
    end
  end

end