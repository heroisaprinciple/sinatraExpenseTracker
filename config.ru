require_relative 'app/api'
run ExpenseTracker::API.new

'''
Simple enough. We’re just loading our application and telling Rack to run it.
With that in place, we can boot our application by running rackup:

$ bundle exec rackup

[2017-06-13 13:34:10] INFO  WEBrick 1.3.1
[2017-06-13 13:34:10] INFO  ruby 2.4.1 (2017-03-22) [x86_64-darwin15]
[2017-06-13 13:34:10] INFO  WEBrick::HTTPServer#start: pid=45203 port=9292

While that’s running, we can use a command-line tool like curl in another
terminal window to send requests to our application.10 The port=9292 bit from
that last line tells us what port our application is running on, so let’s send a
request to localhost:9292:

$ curl localhost:9292/expenses/2017-06-10 -w "\n"

[]
It works! As expected, our application is responding with an empty JSON
array.
'''
