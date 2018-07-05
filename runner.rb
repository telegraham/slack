require_relative './models/channel'
require_relative './models/user'
require_relative './models/channel_membership'
require_relative './models/message'
require 'pry'


graham = User.new("Graham")
elbin = User.new("Elbin")
evans = User.new("Evans")

dux = Channel.new("#ducks")
nyc_web_062518 = Channel.new("#62518")
lunch = Channel.new("#lunch")

graham.send_message(dux, "Quack!")
graham.send_message(dux, "(swimming noises)")
graham.send_message(dux, "Eggs!")

evans.send_message(lunch, "Burger!")


dux.join(graham)
nyc_web_062518.join(graham)

nyc_web_062518.join(elbin)
nyc_web_062518.join(evans)

lunch.join(evans)


p nyc_web_062518.members.map(&:name)
p nyc_web_062518.members.map do |member|
  member.name
end
# nyc_web_062518.selected_channel_memberships


