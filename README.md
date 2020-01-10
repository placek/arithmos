# Arithmos

Convert numbers to [greek numerals](https://en.wikipedia.org/wiki/Greek_numerals#Table).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'arithmos'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install arithmos

## Usage

`Arithmos` is a module that is being included automatically to `Numeric` class. It adds a `#greek` method to each numeral:

```
>> 274.greek
=> "σοδ"
>> 666.greek
=> "χξϛ"
>> 12.greek
=> "ιβ"
>> 6.greek
=> "ϛ"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/placek/arithmos.
