# Slack::Logger
Simple Slack logger using ActiveSupport broadcast and slack-ruby-client

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'slack-logger'
```

And then execute:
```bash
$ bundle install
```

Finally, run the install generator:
```bash
$ rails generate slack_logger:install
```

it will create the followin initializer `config/initializers/slack_logger.rb`. 
This file contains all the information about the existing configuration options.

##Configuration
The gem makes use of the rails log and slack-ruby-client to force logs to be sent to both your normal log file and a slack channel.

To configure your rails application simple add the below code to where you setup your rails log

```ruby
config.after_initialize do
  config.logger.extend ActiveSupport::Logger.broadcast(SlackLogger.logger)
end
```


## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
