# Shyguy

A Ruby class for managing manually hyphenized text.

This a simple gem that helps with soft hyphenation in cases when that needs to
be done manually and both a "stripped" (without hyphens) and "hyphenized"
version need to be eiher stored or displayed.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add shyguy

If bundler is not being used to manage dependencies:

    $ gem install shyguy


## Usage

### Using instance methods

```ruby
# Create a new Shyguy object:
myguy = Shyguy.new('Rechts|schutz|ver|sicher|ungs|gesell|schaften')

# Use the `.shy` instance method to display the string with the `|` symbol
# replaced with `"\u00AD"`.
myguy.shy
=>
"Rechts\u00ADschutz\u00ADver\u00ADsicher\u00ADungs\u00ADgesell\u00ADschaften"

# In case you need to use the string value where you can't use hyphenation
# (in an HTML a meta tag, certain database values etc.), then you can also use
# the `.normalize` instance method to get the string without any hyphenation.
myguy.normalize
=>
"Rechtsschutzversicherungsgesellschaften"
```

### Using class methods

```ruby
Shyguy.display_shy('Holta|vörðu|heiðar|vega|vinnu|verka|manna|skúr')
=>
"Holta\u00ADvörðu\u00ADheiðar\u00ADvega\u00ADvinnu\u00ADverka\u00ADmanna\u00ADskúr"

Shyguy.display_normalized('Holta|vörðu|heiðar|vega|vinnu|verka|manna|skúr')
=>
"Holtavörðuheiðarvegavinnuverkamannaskúr"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/aldavigdis/shyguy-gem. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/aldavigdis/shyguy-gem/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Shyguy project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/shyguy/blob/master/CODE_OF_CONDUCT.md).
