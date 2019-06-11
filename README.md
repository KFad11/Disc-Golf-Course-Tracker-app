# Project

Disc Golf Course Tracker App!

## Overview
  The app allows you to keep track of all the disc golf courses you've visited, and what date you visited them on.

  You'll be able to sign in or sign up. Log in new courses you've played at. Create an initial layout of the course with how many baskets there was and what  par they were. Then log a visit from each course page detailing when the visit was.

  Let's go over how to get started..

## Install

### Clone the repository

```shell
git clone git@github.com:KFad11/Disc-Golf-Course-Tracker-app.git
cd Disc-Golf-Course-Tracker-app
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.5.1`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 2.5.1
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler)

```shell
bundle
```

### Initialize the database

```shell
rails db:create db:migrate db:seed
```

## Serve

```shell
rails s
```
