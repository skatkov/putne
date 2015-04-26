#Putne

## Introduction
Putne - code matrix automation server.

There are a variety of different languages ​​exist static code analysis tools. Ruby already exist in a variety of open-source programs. Complexity and flog that analyzes saikuro, to find duplicate code, flay, to find the Code smell Roodi, Cane, in addition to analyzing the committing of a store or a potential problem, you Churn Bugspot like this program to find the high part.

These tools can help them manage code quality and displays the current code status as one of the indicators. These tools are useful, but using one of these tools in the programming process is very cumbersome and clean. Putne these beongeoreoum to evaluate the development of the code matrix reduces automation server, if the SCM is work to push haejugo automatically analyzes the current code allows to see the results. Also helps enable continuous analysis can go chase a history of managing code quality, it helps you navigate through the various visualization projects from multiple perspectives. These results can be more easily identified through a web server.

## Feature

## Feature
Putne currently supports following code metrics:

* Metric_fu
* Complexity : Flog, Saikuro
* Code smell : Reek, Roodi
* Duplication : Flay
* Churn : Churn
* Rails Best Practice

SCM: Only git
Languages: Only Ruby

## Requirements

* Ubuntu or mac (or similar system)
* Ruby 1.9.3+
* Rails 4
* Bundler
* Redis (Sidekiq)
* Postgresql
* Homebrew (mac)


# ubuntu
sudo apt-get install libicu-dev postgresql redis nodejs npm -y

# mac
brew install ...
```

The next step is to clone the Putne and install the necessary application from github gem through a bundle.

```
git clone https://github.com/nacyot/putne.git
cd putne
bundle install
```

Next, lets set up the database. Registered users Putne used in creating a database and grant privileges.



```
cp config/database.yml.sample config/database.yml
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
```

Run it

```
# sidekiq 서버 실행
bundle exec sidekiq -e development -c 1

# Putne 서버를 실행합니다.
bundle exec rails server
```


## Usage
```
# Default credentials
id : admin@example.com
password : abcd1234
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License
Copyright (c) Original Author 2013 Daekwon Kim, Taken over by 2015 Stanislav Katkov

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
