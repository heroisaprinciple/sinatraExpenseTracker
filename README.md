**Acceptance tests**

Here are the major parts of the app:
• A web application written in Sinatra that will receive incoming HTTP
requests (to add new expenses or search for existing ones)

• A database layer using Sequel to store expenses between requests

• A set of Ruby objects to represent expenses and glue the other pieces
together

![acceptanceTestsIMG](https://i.imgur.com/UTHWGbk.png)

We need to test all of these in different ways. We begin with acceptance specs that
drive the entire app from the outermost layer, the HTTP request/response cycle.
____________

**Unit Tests**

With the unit tests in this chapter, you won’t be calling methods on the API
class directly. Instead, you’ll still be simulating HTTP requests through the
Rack::Test interface. Typically, you test a class through its public interface, and
this one is no exception. The HTTP interface is the public interface.

![unitTestsIMG](https://i.imgur.com/2wIWiaT.png)

