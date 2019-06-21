# serverless-ror-bnm-api

## Motivation
This is the serverless version of the [ror-bnm-api](https://github.com/hanisahkz/ror-bnm-api) app
built using Ruby on Jets [framework](https://rubyonjets.com/). 

## Why serverless?
This app mainly involves static pages that displays data from [BNM API](https://api.bnm.gov.my/portal). 
No database involved. But ultimately, going serverless means lesser need for infrastructure maintenance.

## Development
``` bash
# install dependencies
$ bundle install

# start server at localhost:3000
$ jets server
```

## Production
- Note: This step requires having AWS account since the deployment is done in AWS.

``` bash
$ jets deploy
```

## Tools Used
- `rubymine` for IDE
- `postman` for REST client
- `jets` fort serverless framework
- [Ruby Toolbox](https://www.ruby-toolbox.com/), a site that compares libraries created in Ruby.