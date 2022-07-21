# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 

Here are my notes about how I created the wire6 Ruby on Rails web application

This is essentially the same as my wire5 Ruby on Rails web application,
except that I have made some modificateions to support configuring the app
to be run with the mod_auth_openidc (with Keycloak running locally).
Like wire5, this wire6 web app is deployed using apache2 and passenger.

    fallstechdave@mmrxps17:~$ cd railsprojects/wire6
    fallstechdave@mmrxps17:~/railsprojects/wire6$ ls -latr
    total 100
    -rw-rw-r--  1 fallstechdave fallstechdave    6 Jul 19 15:03 .ruby-version
    -rw-rw-r--  1 fallstechdave fallstechdave  374 Jul 19 15:03 README.md
    -rw-rw-r--  1 fallstechdave fallstechdave  227 Jul 19 15:03 Rakefile
    -rw-rw-r--  1 fallstechdave fallstechdave  246 Jul 19 15:03 .gitattributes
    -rw-rw-r--  1 fallstechdave fallstechdave  160 Jul 19 15:03 config.ru
    drwxrwxr-x  6 fallstechdave fallstechdave 4096 Jul 19 15:03 ..
    -rw-rw-r--  1 fallstechdave fallstechdave 2370 Jul 19 15:03 Gemfile
    drwxrwxr-x  4 fallstechdave fallstechdave 4096 Jul 19 15:03 lib
    drwxrwxr-x 10 fallstechdave fallstechdave 4096 Jul 19 15:03 test
    drwxrwxr-x  2 fallstechdave fallstechdave 4096 Jul 19 15:03 storage
    -rw-rw-r--  1 fallstechdave fallstechdave 5709 Jul 19 15:03 Gemfile.lock
    drwxrwxr-x  3 fallstechdave fallstechdave 4096 Jul 19 15:03 vendor
    drwxrwxr-x 11 fallstechdave fallstechdave 4096 Jul 19 15:03 app
    -rw-rw-r--  1 fallstechdave fallstechdave   63 Jul 19 15:03 Procfile.dev
    -rw-rw-r--  1 fallstechdave fallstechdave  757 Jul 19 15:03 .gitignore
    drwxrwxr-x  5 fallstechdave fallstechdave 4096 Jul 19 15:03 config
    drwxr-xr-x  2 fallstechdave fallstechdave 4096 Jul 19 15:03 bin
    drwxrwxr-x  3 fallstechdave fallstechdave 4096 Jul 19 15:15 db
    drwxrwxr-x  6 fallstechdave fallstechdave 4096 Jul 19 15:17 tmp
    drwxrwxr-x 14 fallstechdave fallstechdave 4096 Jul 19 15:28 .
    -rw-rw-r--  1 fallstechdave fallstechdave 4018 Jul 19 15:28 wire6-development-mysqldump-20220719.sql
    drwxrwxr-x  2 fallstechdave fallstechdave 4096 Jul 19 15:30 log
    drwxrwxr-x  3 fallstechdave fallstechdave 4096 Jul 19 15:33 public
    drwxrwxr-x  8 fallstechdave fallstechdave 4096 Jul 21 08:20 .git
    fallstechdave@mmrxps17:~/railsprojects/wire6$ 


    git remote add origin git@github.com:fallstechdave/wire6.git
    git branch -M 'main'
    git push -u origin 'main'

