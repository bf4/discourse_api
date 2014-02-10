module DiscourseApi
  module API
    module Posts


      def post_create(*args, &block)
        response = post('/posts.json', args)
        # response[:body]['topic_list']['topics']
      end
    end
  end
end
