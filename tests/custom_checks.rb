# See the following 'Custom Tests' section to add tests ;)
# https://github.com/gjtorikian/html-proofer#custom-tests

# Check /**/*.json URLs return valid JSON data
require 'json'
class JSONs < ::HTMLProofer::Check
  def valid_json?(filename)
    JSON.load_file(filename)
    true
  rescue JSON::ParserError, TypeError => e
    false
  end

  def run
    return unless @runner.current_filename == '_site/api.html'

    # Get JSON API URLs and check if they return valid JSON data.
    @html.css('#index > ul > li').each do |node|
      base_url  = '_site/'
      json_path = node.at_css('a').attribute('href').value
      # e.g. => /projects.json

      next if valid_json?(base_url + json_path)
      return add_failure("\tInvalid JSON format: #{json_path}")
    end
  end
end
