# Bookmark Manager #

## User Stories ##
```
As a user
So that I can quickly access websites
I'd like to view a list of bookmarks

As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```

## Domain Models ##
Client -> Controller -> Model -> View
/bookmarks -> app -> Bookmark -> erb bookmarks

## Created database and table ##

- Created database:
CREATE DATABASE bookmark_manager;
- Connected to database:
\c bookmark_manager;
- Created a table
CREATE TABLE bookmarks( id SERIAL PRIMARY KEY, url VARCHAR(60));
