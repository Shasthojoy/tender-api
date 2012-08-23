module Tender
  module Discussion

    def get_discussions
      connection.get("discussions")
    end

    def create_discussion(category_id, attributes)
      attributes.merge!(skip_spam: true)
      connection.post("categories/#{category_id}/discussions", attributes) do |req|
        req.headers['Content-Type'] = "application/json"
      end
    end

  end
end
