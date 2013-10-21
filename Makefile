REPORTER = list

test:
  @NODE_ENV=test ./node_modules/.bin/mocha \
    --reporter $(REPORTER) \

test-w:
  @NODE_ENV=test ./node_modules/.bin/mocha \
    --reporter $(REPORTER) \
    --growl \
    --watch
mocha test/*.js -R spec.
.PHONY: test test-w
