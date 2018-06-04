# KnightTravails

A gem which shows the shortest possible path from a starting point to an end point
on a 8x8 grid w/ a knight chess piece. The knight can only move the same way a standard
knight chess piece can.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'knight_travails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install knight_travails

## Usage

* Ensure to require 'knight_travails'
* To play around with it you can use the following:
    $ test = KnightTravails::Knight.new
    $ test.knight_move([3, 3], [7, 7])
    $ test.knight_move([0, 0], [3, 2])

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/knight_travails.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
