require 'tender/discussion'

module Tender
  class Client

    attr_accessor :domain, :api_token, :password, :host_format, :domain_format, :protocol, :port

    def initialize(domain, api_token)
      self.domain = domain # 'tender-api-testing'
      self.api_token = api_token # 'b19343da7748bd4e97d13fcc8b76304a039eb801'
    end

    def connection
      @conn ||= Faraday.new(url: "https://api.tenderapp.com/#{self.domain}" ) do |faraday|
        faraday.use FaradayMiddleware::EncodeJson
        faraday.use FaradayMiddleware::ParseJson, :content_type => /\bjson$/
        faraday.adapter Faraday.default_adapter
      end
      @conn.headers['Accept'] = "application/vnd.tender-v1+json"
      @conn.headers['X-Tender-Auth'] = self.api_token
      @conn
    end

    include Tender::Discussion
  end
end
