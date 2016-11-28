Database Server Tech Test


User Stories
---
```
As a developer
So I can serve http requests
I have to set up a Server that listens on localhost:4000
```
```
As a server
So I can receive a query string of a key value pair in set?somekey=somevalue
I will store the query in memory.
```
```
As a server
So I can serve the request in a get?key=somekey format
It should return the value stored in somekey
```
```
As a developer
So I can reatain the search queries
I want to be able to save the data in a file
```

Instructions
---
```
bundle install
ruby app.rb
localhost:4000/
to save a key-value pair add it to the string after /set?key=value
to retrieve the value based on 'somekey' type /get?key=somekey
it writes the key-value pairs to ./database.txt
```
