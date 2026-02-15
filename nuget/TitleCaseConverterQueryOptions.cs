using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.TitleCaseConverter
{
    /// <summary>
    /// Query options for the Title Case Converter API
    /// </summary>
    public class TitleCaseConverterQueryOptions
    {
        /// <summary>
        /// The text to convert to title case
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }

        /// <summary>
        /// The case to convert the text to
        /// </summary>
        [JsonProperty("style")]
        public string Style { get; set; }
    }
}
