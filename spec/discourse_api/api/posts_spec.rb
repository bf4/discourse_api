require 'spec_helper'

describe DiscourseApi::API::Posts do
  subject { DiscourseApi::Client.new("http://localhost") }
  before do
    stub_post("http://localhost/posts.json").to_return(body: fixture("posts.json"), headers: { content_type: "application/json" })
  end

  describe "create post" do
    specify 'successful post' do
      subject.post_create
      expect(a_post("http://localhost/posts.json")).to have_been_made
    end
# 
# client.post_create(
#   category: "Boing Boing",
#   skip_validations: true,
#   auto_track: false,
#   title: "Concert Master: A new way to choose",
#   raw: "This is the raw markdown for my post"
# )
    # before do
    #   stub_get("http://localhost/hot.json").to_return(body: fixture("hot.json"), headers: { content_type: "application/json" })
    # end

    # it "requests the correct resource" do
    #   subject.hot_topics
    #   expect(a_get("http://localhost/hot.json")).to have_been_made
    # end

    # it "returns the requested topics" do
    #   topics = subject.hot_topics
    #   expect(topics).to be_an Array
    #   expect(topics.first).to be_a Hash
    # end
  end
end
