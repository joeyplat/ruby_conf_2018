# Make Ruby Write Code for You

[video](http://confreaks.tv/videos/rubyconf2018-make-ruby-write-your-code-for-you)
[magic-modules](github.com/googlecloudplatform/magic-modules)


"Auto-geneartion": Writing code that writes code for you.

It's not:
* No blockchain
* No machine learning
* No compiler magic
* No meta-programming

Taking a template file that kind of looks like ruby and then injecting in ruby keywords such that when you have a final result it's valid ruby code that can be run through the ruby interpreter.

How do you deal with the situations where you're copying and pasting code.

When do you auto-generate?
* Lots of similar-looking code
* The overhead of building out your templates + framework makes sense
* You still might be writing some code manually


What do you need?
* Templates
* Word Bank

Where might Procore use this?
* Auto generating tests
* Auto generating class libraries for the Procore API
