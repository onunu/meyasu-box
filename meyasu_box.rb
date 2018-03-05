require 'faraday'

module MeyasuBox
  def post(params)
    @postman = Post.new(params)
    @postman.post
  end

  module_function :post

  class Post
    POST_CHANNEL_URL = ENV['POST_CHANNEL_URL']

    def initialize(params)
      @text = params['text']
    end

    def post
      res = request_slack
      res.status == 200
    end

    private

    def request_slack
      Faraday.post do |req|
        req.url(POST_CHANNEL_URL)
        req.headers['Content-Type'] = 'application/json'
        req.body = { text: @text}.to_json
      end
    end
  end
end
