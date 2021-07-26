# README

This web application has only one page.
You can search videos by title and/or subject.

To implement the search, I used the pg_search gem which makes it easy to achieve an intelligent search.

![video_search](https://user-images.githubusercontent.com/75636190/126873756-007f2825-41d6-4adf-b628-c5f7c83d407e.gif)


## System depedencies

* Ruby version: '2.6.6'

* Rails version: '6.0.4'

* Gems: [gem 'pg_search', '~> 2.3.0'](https://github.com/Casecommons/pg_search)

* Configuration

* Database: postgres

## Instructions to run it locally.

```
rails db:create db:migrate db:seed
rails s
```
