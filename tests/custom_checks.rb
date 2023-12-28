# See the following 'Custom Tests' section to add tests ;)
# https://github.com/gjtorikian/html-proofer#custom-tests

# Check /**/*.json URLs return valid JSON data
require 'json'
class CustomChecks < ::HTMLProofer::Check
  BASE_URL  = '_site/'

  def run
    check_json_apis if @runner.current_filename == '_site/api.html'
    check_meta_tags if @runner.current_filename == '_site/stats.html'
  end
end

def check_meta_tags
  # Check if meta tags render data correctly
  @html.css('head > meta').each do |node|
    if node.attribute('content') &&
       node.attribute('content').value.include?('site.data')

      add_failure("Failed to render Jekyll data: #{node.attribute('content')}")
    end
  end
end

def check_json_apis
  # Get JSON API URLs and check if they return valid JSON data.
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
