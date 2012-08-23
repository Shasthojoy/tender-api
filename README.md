# Tender

Wrapper for the [Tender][tender] API.

Currently only supports retrieving and creating discussions.

## Installation

Add this line to your application's Gemfile:

    gem 'tender-api', require: 'tender'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tender-api

## Usage

```
require 'tender'
client = Tender::Client.new(YOUR_DOMAIN, YOUR_API_KEY)

client.get_discussions
client.put_discussion( CATEGORY_ID, DISCUSSION_ATTRIBUTES )
````

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[tender]: http://tenderapp.com/