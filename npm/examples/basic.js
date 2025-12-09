/**
 * Basic Example - Title Case Converter API
 *
 * This example demonstrates how to use the Title Case Converter API.
 * Make sure to set your API key in the .env file or replace '[YOUR_API_KEY]' below.
 */

require('dotenv').config();
const titlecapitalizationAPI = require('../index.js');

// Initialize the API client
const api = new titlecapitalizationAPI({
    api_key: process.env.API_KEY || '[YOUR_API_KEY]'
});

// Example query
var query = {
  "text": "comprehensive analysis of quarterly financial performance and strategic initiatives for sustainable growth",
  "style": "title-case"
};

// Make the API request using callback
console.log('Making request to Title Case Converter API...\n');

api.execute(query, function (error, data) {
    if (error) {
        console.error('Error occurred:');
        if (error.error) {
            console.error('Message:', error.error);
            console.error('Status:', error.status);
        } else {
            console.error(JSON.stringify(error, null, 2));
        }
        return;
    }

    console.log('Response:');
    console.log(JSON.stringify(data, null, 2));
});
