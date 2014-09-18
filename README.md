Setup:
```
bundle install
rake db:create
rake db:migrate
rake db:test:prepare
```

Spec success: `bundle exec rspec`
Spec failure: `bundle exec spring rspec`