# PipedriveDealCreator

This is a Ruby gem that allows you to take this library and easily create a deal in Pipedrive with pretty much anything. The implementation I am using it for is on on my site's contact form and allows you to assign the deal to a specific pipeline and also to a specific user.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pipedrive_deal_creator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pipedrive_deal_creator

## Usage

### Signature

```ruby
pipedrive.create_deal(person_attributes, deal_name, deal_description, stage_id, user_id)
```

The Stage Id is optional and defines to which stage the deal should be assigned.
The User Id is optional as well and assigns a specific employee to the deal.

### Example

```ruby
require 'pipedrive_deal_creator'

api_token = '78bc...'
pipedrive = PipedriveDealCreator::PipedriveDealCreator.new(api_token)

pipedrive.create_deal(
  { 
    name: 'John Doe',
    email: 'john@johndoe.com' 
  }, 
  'Deal Description',
  'Some text that describes the deal...'
)
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/pipedrive_deal_creator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
