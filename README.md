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
| Client     | Controller | Model    | View           |
| ---------- | ---------- | -------- | -------------- |
| /bookmarks | app.rb     | Bookmark | erb :bookmarks |

## How to Create the Database ##
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
