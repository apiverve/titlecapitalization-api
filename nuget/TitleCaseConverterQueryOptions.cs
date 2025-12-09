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
        /// Example: hello world
        /// </summary>
        [JsonProperty("text")]
        public string Text { get; set; }

        /// <summary>
        /// The case to convert the text to (apa, chicago, ap, mla, nyt, ama, bb, wikipedia, email, title-case, sentence-case, uppercase, lowercase, first-letter, alt-case, toggle-case)
        /// Example: title
        /// </summary>
        [JsonProperty("style")]
        public string Style { get; set; }
    }
}
