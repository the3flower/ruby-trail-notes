=begin
  [Web Concepts Summary]
  - HTTP
  - REST
  - MVC
  - APIs
  - Cookies
=end

## HTTP (Hypertext Transfer Protocol)
#  - Request-and-Response conversation between the client and the server.
#  - (1) browser = 'client' raise a 'request' (also have so many client not just browser).
#  - (2) 'request' sends to a 'server'.
#  - (3) 'server' sends 'response' back to 'browser'.
#  - HTTP protocol is 'stateless', means that each individual request needs to carry all the information needed to fulfill it.
#  - Requests and Response over the TCP/IP layer.
#  - HTTP URLs
#    : https://www.domain.com:1234/path/to/resource?a=b&x=y
#    : https - specifies the protocol (can be http or https).
#    : www.domain.com - is the host.
#    : 1234 - is the port (default 80).
#    : path/to/resource - is the resource path (help server identify).
#    : ?a=b&x=y - are query string parameters (string parameter used by server to spot the right resource).
#  - HTTP Requests (HTTP Response similar, but except for the status line and headers.)
#    : request line - GET /articles/http-basics HTTP/1.1
#    : > consists of a verb, a path, and the HTTP version.
#    : > Verbs
#        + GET, POST, PUT, DELETE (less-used: HEAD, TRACE, OPTIONS)
#    : headers - additional information about the message, the requester, and the communication format.
#    : body(optional) - the content of the request.
#  - Status Codes
#    : 1xx - Information Messages
#    : 2xx - Successful
#    : 3xx - Redirection
#    : 4xx - Client Error
#    : 5xx - Server Error

## REST (Representational State Transfer)
#  - ONE of the Architectural Styles for building web services, that use HTTP verbs to perform specific actions on resources
#  - Using HTTP verbs to interact with resources (usually data) in a structured way
#  - GET
#    : Not change server's state
#    : Retrieve data
#    : Idempotent
#    : > no matter how many times you call it, the result should be the same, and it shouldn't have any side effects on the data.
#  - POST
#    : Send data to server
#    : Creating new resources
#    : Idempotent
#    : > Repeating a POST request could create multiple instances of the same resource.
#  - PUT
#    : Replaces an entire resource with new data.
#  - PATCH
#    : Partial updates, modify only certain fields of the resource, not the whole thing.
#  - DELETE
#    : delete
#    : Idempotent 
#    : > Repeated requests to delete the same resource should result in the same outcome (e.g. the resource is already deleted).

## MVC (Model-View-Controller)
#  - Architecture pattern used in Rails!
#  - How MVC works?
#    : [Model] <--> [Controller] <--> [View]
#    :
#    : (1) Browser, makes a request
#    : (2) Web Server
#    :     (2.1) receives the request
#    :     (2.2) uses 'routes' to find which 'Controller'
#    :     (2.3) 'dispatcher' (in web server) create a new controller, call the action and pass the parameters.
#    : (3) Controller
#    :     > Parsing requests, data submission, cookies, sessions and the “browser stuff”.  
#    :     > Mediator between the Model and the View.
#    :     > It handles input from the View and updates the Model as needed.
#    : (4) Model
#    :     > Ruby classes
#    :     > Talk to Database
#    :     > Store, Validate data
#    :     > Perform Business Logic
#    : (5) View
#    :     > What the users sees (HTML, CSS, XML, JavaScript, JSON)

## APIs (Application-Programming Interface)
#  - Instructions and Standards for accessing a Web-based software application or Web tool.
#  - NOT all APIs are web-based.
#  - Software-to-Software Interface (just like UI allows human to interact with computer).
#  - Application sending a 'request' called Client, Application sending a 'response' called Server.
#  - Architectural Styles or Protocols used to 'implement' APIs
#  - Architectural Styles or Protocols
#    : REST
#    : > Architectural style for web services.
#    : > Used to create RESTful APIs.
#    : > Uses HTTP verbs (GET, POST, PUT, DELETE) to perform actions on resources.
#    : > return data in formats like JSON or XML.
#    : SOAP
#    : > Protocol for web services.
#    : > Used to create SOAP-based APIs.
#    : > Communicates through XML messages, offering built-in security and transactional support.
#    : GraphQL
#    : > Query language for APIs (not an architecture).
#    : > Used to create GraphQL APIs.
#    : > Allows clients to query for exactly the data they need, typically over HTTP, like REST.
#    : WebSockets
#    : > Communication protocol for real-time, full-duplex communication.
#    : > Can be used to build WebSocket-based APIs.
#    : > Enables persistent, two-way communication between client and server.
#    : THERE ARE MORE architectures and protocols that can be used to create APIs beyond REST, SOAP, GraphQL, and WebSockets.

## Cookies
#  - The way websites to 'remember' who are you
#  - Maintaining user sessions, Tracking user activity, and Storing preferences.

