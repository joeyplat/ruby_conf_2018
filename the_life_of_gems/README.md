# Building a Gem

- [Video](http://confreaks.tv/videos/rubyconf2018-the-anatomy-of-a-ruby-gem-going-from-zero-to-sharing-code)
- [Slides](https://speakerdeck.com/t27duck/the-anatomy-of-a-ruby-gem-going-from-zero-to-sharing-code)

## Helpful Links
- [Gem Structure](https://guides.rubygems.org/what-is-a-gem/)
- [Make a Gem](https://guides.rubygems.org/make-your-own-gem/)

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
* Things to do before releasing:
  * `spec.metadata["allowed_push_host"] = "https://rubygems.org"`

## Files
* Gem files live in `lib`
* The ruby file with the gem name, e.g. `lib/my_gem.rb`, is generally an "entry file" that requires files located in `lib/my_gem`
* Gotchas
  * For newly created folder/file, do not forget to add one entry in the gemspec file, e.g. `song.rb` in the santa_claus gem
  * Also don't forget to commit your changes before running `rake install`

## Steps to create a simple hello world gem
1. `bundle gem hello_world`
  * Choose `rspec`
  * Choose `y` for MIT license
  * Choose `y` for codes of conduct
2. Update `gem_name\gem_name.gemspec`:
  * `spec.summary`
  * `spec.description`
  * `spec.metadata["allowed_push_host"`
  * `spec.require_paths`
  * `spec.add_development_dependency`
3. Build the gem locally: `$ rake build`
4. Install the gem locally: `$ rake install`
  *  Use the gem: `require 'gem_name'`
5. Test the gem: `$ rake spec`
6. Push the finished gem to rubygems.org: `$ rake release`
  * If you haven't already, signup at [rubyforge](https://rubygems.org/sign_up)
7. Find the gem at https://rubygems.org/gems/my_gem

## Example

* [santa_claus gem](https://rubygems.org/gems/santa_claus)
* [santa_claus gem repo](https://github.com/joeyplat/santa_claus)

