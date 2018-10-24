# Bookmark Manager #

## User Stories ##
```
As a time-pressed user
So that I can quickly access websites
I'd like to view a list of bookmarks

As a time-pressed user
So that I can save a website
I'd like to add the site's address and title to bookmark manager

As a time-pressed user
So that I can keep my bookmarks up-to-date
I'd like to delete a bookmark
```

## Domain Model ##
| Client     | Controller | Model    | View           |
| ---------- | ---------- | -------- | -------------- |
| /bookmarks | app.rb     | Bookmark | erb :bookmarks |

## Dependancies ##
* Capybara
* PG
* Rspec
* Rubocop
* Simplecov
* Simplecov-Console
* Sinatra

*NOTE: These can be installed by running `bundle` in the root of the directory.*

## How to Use ##
1. Open Terminal and clone the repository:
```bash
git clone https://github.com/aimeecraig/bookmark-manager.git
```
2. Change into the project directory:
```bash
cd bookmark-manager
```
3. Run the program:
```bash
rackup
```
4. Access the program from `localhost:9292`.

5. Create the database to store the bookmarks by following the steps below.

### Create the Database ###
1. In Terminal, connect to PostgreSQL:
```sql
psql
```
2. Create the database:
```sql
CREATE DATABASE bookmark_manager;
```
3. Connect to the database:
```sql
\c bookmark_manager;
```
4. Run the query in db/migrations/01_create_bookmarks_table.sql:
```sql
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```
