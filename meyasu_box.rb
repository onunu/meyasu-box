require 'faraday'

module MeyasuBox
  def post(params)
    @postman = Post.new(params)
    @postman.post
  end

  module_function :post

  class Post
    def initialize(params)
      @text = params['text']
      @response_url = params['response_url']
    end

    def post
      res = request_slack
      res.status == 200
    end

    private

    def request_slack
      Faraday.post do |req|
        req.url(@response_url)
        req.headers['Content-Type'] = 'application/json'
        req.body = { text: 'これはテストです'}.to_json
      end
    end
  end
end
