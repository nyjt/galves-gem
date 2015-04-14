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
```ruby
Galves.api_key = 'YOUR-API-KEY'
```

## Usage

#### 1. Fetch all available years:
```ruby
Galves.years
```

#### 2. Fetch all available makes:
```ruby
Galves.makes
```

#### 3. Fetch makes by year:
```ruby
Galves.makes_by_year(year)
```

#### 4. Fetch years for specific make:
```ruby
Galves.years_by_make(make)
```

#### 5. Fetch available models:
```ruby
Galves.models(year, model)
```

#### 6. Fetch available styles:
```ruby
Galves.styles(year, model)
```

#### 7. Fetch specific vehicle:
```ruby
Galves.vehicle(gid, vin)
```

#### 8. Fetch VIN:
```ruby
Galves.vin(vin)
```

#### 9. Fetch mileage:
```ruby
Galves.mileage(id, integer)
```

#### 10. Fetch historical years:
```ruby
Galves.history_years
```

#### 11. Fetch historical makes:
```ruby
Galves.history_makes
```

#### 12. Fetch historical makes by year:
```ruby
Galves.history_makes_by_year(year)
```

#### 13. Fetch historical years for specific make:
```ruby
Galves.history_years_by_make(make)
```

#### 14. Fetch historical available models:
```ruby
Galves.history_models(year, model)
```

#### 15. Fetch historical available styles:
```ruby
Galves.history_styles(year, model)
```

For more detail documentation go to https://www.galves.com/ docs
## Contributing

1. Fork it ( https://github.com/drkmen/galves-gem/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
