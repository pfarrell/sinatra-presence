# Sinatra::Presence

A Sinatra extension that will recognize if your request could be redirected to a local network location.

Why? 

Let's say you run applications on your home network... why use the infrastructure of the internet when
your requests could be serviced locally?  

Why, indeed...

## Installation

Add this line to your application's Gemfile:

    gem 'sinatra-presence'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sinatra-presence

## Usage

Register like a typical Sinatra extension

Set a local setting for local_authority in your sinatra app.rb (or config.rb or however you do it).
Include everything from the scheme to the port that will get replaced.

    set :local_authority, 'http://192.168.0.1:8080'

## Contributing

1. Fork it ( https://github.com/pfarrell/presence/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
