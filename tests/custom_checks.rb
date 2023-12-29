# See the following 'Custom Tests' section to add tests ;)
# https://github.com/gjtorikian/html-proofer#custom-tests

require 'json'
class CustomChecks < ::HTMLProofer::Check
  BASE_URL  = '_site/'

  def run
    check_meta_tags
    check_json_apis if @runner.current_filename == '_site/api.html'
  end
end

# Check if meta tags render data correctly
# Example: https://jr.mitou.org/stats
def check_meta_tags
  @html.css('head > meta').each do |node|
    if node.attribute('content') &&
       node.attribute('content').value.include?('site.data')

      add_failure("Failed to render Jekyll data: #{node.attribute('content')}")
    end
  end
end

# Get JSON API URLs from https://jr.mitou.org/apis
# and check if they all return valid JSON data.
def check_json_apis
  @html.css('#index > ul > li').each do |node|
    json_path = node.at_css('a').attribute('href').value
    # e.g. => /projects.json

    next if valid_json?(BASE_URL + json_path)
    add_failure("Invalid JSON format: #{json_path}")
  end
end

def valid_json?(filename)
  JSON.load_file(filename)
  true
rescue JSON::ParserError, TypeError => e
  false
end
