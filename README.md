# TrackRate
Keep track of open/click rates

## Alpha
Please don't use this is still in development

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'track_rate'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install track_rate
```

Add this to your `config/routes.rb`
```ruby
mount TrackRate::Engine, at: "/track_rate"
```

When you send you will need to add a call to track the send. When you do this pass the `tracking_object` for example an instance of user and a `service_key` for example `email`.
```ruby
TrackRate::ProcessSend.perform(user, service_key)
```

Finally set up your provider to make post requests when an event occurs.

SendGrid: https://sendgrid.com/docs/API_Reference/Webhooks/event.html with webhook URL as `<www.mywebsite.com>/send_grid/open`

## Currently supports

### Email

Using the `service_key` as `email`

- SendGrid

## Contributing
PRs to track other providers welcome!

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
