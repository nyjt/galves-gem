# Galves::Gem

Gem for working with Galves.com API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'galves-gem'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install galves-gem

Set galves api_key:

    $Galves.api_key = 'YOUR-API-KEY'

## Usage

#### 1. Fetch all available years:
```ruby
Galves.years
```

#### 2. Fetch all available makes:
```ruby
Galves.makes
```

3. Fetch makes by year:

```ruby
Galves.makes_by_year(integer)
```

    4. Fetch years for specific make:

```ruby
Galves.years_by_make(string)
```

    5. Fetch available models:

```ruby
Galves.models(integer, string)
```

    6. Fetch available styles:

```ruby
Galves.styles(integer, string)
```

    7. Fetch specific vehicle:

```ruby
Galves.vehicle(integer, string)
```

    8. Fetch VIN:

```ruby
Galves.vin(integer)
```

    9. Fetch mileage:

```ruby
Galves.mileage(integer, integer)
```

    10. Fetch historical years:

```ruby
Galves.history_years
```

    11. Fetch historical makes:

```ruby
Galves.history_makes
```

    12. Fetch historical makes by year:

```ruby
Galves.history_makes_by_year(integer)
```

    13. Fetch historical years for specific make:

```ruby
Galves.history_years_by_make(string)
```

    14. Fetch historical available models:

```ruby
Galves.history_models(integer, string)
```

    15. Fetch historical available styles:

```ruby
Galves.history_styles(integer, string)
```

For more detail documentation go to https://www.galves.com/ docs
## Contributing

1. Fork it ( https://github.com/[my-github-username]/galves-gem/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
