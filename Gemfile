source "https://rubygems.org"

gem "jets"
gem 'slim-rails'
gem 'faraday'

# Include webpacker if you are you are building html pages
gem "webpacker", git: "https://github.com/tongueroo/webpacker.git", branch: "jets"

# gem "dynomite" #, '>= 5.2.3'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'shotgun'
  gem 'rack', '>= 2.1.4'
end

group :test do
  gem 'rspec' # rspec test group only or we get the "irb: warn: can't alias context from irb_context warning" when starting jets console
  gem 'launchy'
  gem 'capybara', '>= 3.24.0'
end
