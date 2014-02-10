# require 'discourse_api'

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require File.expand_path('../../lib/discourse_api', __FILE__)

url = ENV.fetch('DISCOURSE_URL') { "http://localhost:3000" }
client = DiscourseApi::Client.new(url)
client.api_key      = ENV['DISCOURSE_API_KEY']
client.api_username = ENV['DISCOURSE_API_USER']

client.post_create(
  category: "Boing Boing",
  skip_validations: true,
  auto_track: false,
  title: "Concert Master: A new way to choose",
  raw: "This is the raw markdown for my post"
)
