# Building a Gem

[Video](http://confreaks.tv/videos/rubyconf2018-the-anatomy-of-a-ruby-gem-going-from-zero-to-sharing-code)
[Slides](https://speakerdeck.com/t27duck/the-anatomy-of-a-ruby-gem-going-from-zero-to-sharing-code)

## Where do gems live?

`~/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems`

## Loading Gems
Latest version: `require "ruby_gem`
Specific version: `gem "ruby_gem", "1.0.1"`

## Gemspec
* File that describes the gem, e.g. name, description, dependencies, and version
* Convention is to name the gemspec the same as the gem
* Just a ruby file
* What files to include: `spec.files`
* Executables live here: `spec.bindir`
* Directories appended to the load path: `spec.require_paths`
* Dependencies: `spec.add_runtime_dependency` and `spec.add_development_dependency`

## Files
* Gem files live in `lib`
* The ruby file with the gem name, e.g. `lib/my_gem.rb`, is generally an "entry file" that requires files located in `lib/my_gem`

## Steps to create a simple hello world gem
1. `bundle gem hello_world`
  * Choose `rspec`
  * Choose `y` for MIT license
  * Choose `y` for codes of conduct
2. Build the gem locally: `$ rake build`
3. Install the gem locally: `$ rake install`
  *  Use the gem: `require 'gem_name'`
4. Test the gem: `$ rake spec`
5. Push the finished gem to rubygems.org: `$ rake release`
6. Find the gem at https://rubygems.org/gems/my_gem



