require 'json'

def valid_json?(filename)
  JSON.load_file(filename)
  true
rescue JSON::ParserError, TypeError => e
  false
end

is_test_passed = true
Dir.glob("_site/**/*.json") do |filename|
  unless valid_json? filename
    puts "\tInvalid JSON format: #{filename}"
    is_test_passed = false
  end
end

raise unless is_test_passed
