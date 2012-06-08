# Keyczar

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'keyczar-jruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install keyczar-jruby

## Usage

Simply require "keyczar-jruby" or just "keyczar". You'll want to set the Log4j properties for Keyczar, unless you enjoy warnings.

An example file for development might look like:

```
log4j.rootLogger=DEBUG, Keyczar
log4j.appender.Keyczar=org.apache.log4j.RollingFileAppender
log4j.appender.Keyczar.File=log/keyczar_development.log
log4j.appender.Keyczar.MaxFileSize=10MB
log4j.appender.Keyczar.MaxBackupIndex=10
log4j.appender.Keyczar.layout=org.apache.log4j.PatternLayout
log4j.appender.Keyczar.layout.ConversionPattern=%d{ISO8601} %p %t %c - %m%n
```

And one for production:

```
log4j.rootLogger=ERROR, Keyczar
log4j.appender.Keyczar=org.apache.log4j.RollingFileAppender
log4j.appender.Keyczar.File=log/keyczar_production.log
log4j.appender.Keyczar.MaxFileSize=10MB
log4j.appender.Keyczar.MaxBackupIndex=10
log4j.appender.Keyczar.layout=org.apache.log4j.PatternLayout
log4j.appender.Keyczar.layout.ConversionPattern=%d{ISO8601} %p %t %c - %m%n
```

Where ever you save this, you'll then want to call:

```ruby
Keyczar.set_logger_properties("/full/path/to/keyczar_logging_production.properties")
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
