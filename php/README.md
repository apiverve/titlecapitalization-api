# Title Case Converter API - PHP Package

Title Case Converter formats text strings into specific editorial style guidelines and capitalization standards. Send raw headline text and a chosen rule set like APA, Chicago, or AP to receive properly capitalized copy.

## Installation

Install via Composer:

```bash
composer require apiverve/titlecapitalization
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Titlecapitalization\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'text' => 'comprehensive analysis of quarterly financial performance and strategic initiatives for sustainable growth',
    'style' => 'title-case'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Titlecapitalization\Client;
use APIVerve\Titlecapitalization\Exceptions\APIException;
use APIVerve\Titlecapitalization\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'comprehensive analysis of quarterly financial performance and strategic initiatives for sustainable growth', 'style' => 'title-case']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/titlecapitalization?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/titlecapitalization?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/titlecapitalization?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
