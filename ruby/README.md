# Title Case Converter API - Ruby Gem

Title Case Converter formats text strings into specific editorial style guidelines and capitalization standards. Send raw headline text and a chosen rule set like APA, Chicago, or AP to receive properly capitalized copy.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_titlecapitalization'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_titlecapitalization
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_titlecapitalization'

# Initialize the client
client = APIVerve::Titlecapitalization::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  text: "comprehensive analysis of quarterly financial performance and strategic initiatives for sustainable growth",
  style: "title-case"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "comprehensive analysis of quarterly financial performance and strategic initiatives for sustainable growth", style: "title-case" })
  puts response["data"]
rescue APIVerve::Titlecapitalization::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Titlecapitalization::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Titlecapitalization::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "style": "title-case",
    "text": "Comprehensive Analysis of Quarterly Financial Performance and Strategic Initiatives for Sustainable Growth"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/titlecapitalization?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/titlecapitalization?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/titlecapitalization?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
