# Design Patterns Builder

The Builder is a design pattern designed to provide a flexible solution to various object creation problems in object-oriented programming. The intent of the Builder design pattern is to separate the construction of a complex object from its representation. It is one of the Gang of Four design patterns.
This library was created based on the book [Design Patterns in Ruby](https://www.amazon.com.br/Design-Patterns-Ruby-Russ-Olsen/dp/0321490452) and the [repository](https://github.com/nslocum/design-patterns-in-ruby).

## Installation

Execute:

    $ bundle install

## Usage

```
require './lib/design/patterns/builder'

builder = Design::Patterns::Builder::ComputerBuilder.new
builder.turbo
builder.display(:lcd)
builder.add_cd
builder.add_dvd(true)
builder.add_hard_disk(100_000)

# manufacture 10 computers using the builder
computers = []
10.times { computers << builder.computer.clone }
computers.each { |computer| puts computer }

# computer must have at least 250 MB of memory
builder = Design::Patterns::Builder::ComputerBuilder.new
builder.memory_size(249)
begin
  builder.computer
rescue Exception => e
  puts e.message
end

# computer must have at most 4 drives
builder = Design::Patterns::Builder::ComputerBuilder.new
builder.add_cd
builder.add_dvd
builder.add_hard_disk(1000)
builder.add_cd
builder.add_dvd
begin
  builder.computer
rescue Exception => e
  puts e.message
end

# use magic method to rapidly build a computer
puts 'Computer built with magic method builder'
builder = Design::Patterns::Builder::ComputerBuilder.new
builder.add_cd_and_dvd_and_harddisk_and_turbo
computer = builder.computer
puts "CPU: #{computer.motherboard.cpu.class}"
computer.drives.each { |drive| puts "Drive: #{drive.type}" }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/scalone/design-patterns-builder. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Design::Patterns::Builder project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/scalone/design-patterns-builder/blob/master/CODE_OF_CONDUCT.md).
