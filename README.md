# AutoTruncatedLogger

AutoTruncatedLogger is a auto truncate old logfile. if you always attension to Rails log file, should use this gem.

## Installation

Add this line to your application's Gemfile:

    gem 'auto_truncated_logger'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install auto_truncated_logger

## Usage

example for Rails, write your config/environments/test.rb

```
  config.logger = AutoTruncatedLogger.new(config.paths['log'][0], 10485760)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
