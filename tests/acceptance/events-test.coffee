`import Ember from 'ember'`
`import { module, test } from 'qunit'`
`import startApp from '../helpers/start-app'`

application = null

module 'Acceptance: Events',
  beforeEach: ->
    application = startApp()
    ###
    Don't return as Ember.Application.then is deprecated.
    Newer version of QUnit uses the return value's .then
    function to wait for promises if it exists.
    ###
    return

  afterEach: ->
    Ember.run application, 'destroy'

test 'visiting /', (assert) ->
  visit '/'
  fillIn('#username_input', 'dcrec1')
  click('form button')
  andThen ->
    assert.ok $(".events").html().indexOf("ago") > -1
    assert.notEqual $(".ago").html(), "a few seconds ago"
    assert.ok $("#username_input").size() > 0

test 'visiting /:username', (assert) ->
  visit '/dcrec1'
  andThen ->
    assert.equal $(".events .commits a").attr("href"), "https://github.com/dcrec1/test/commit/c06117308532c2c09b19e45d059798a109fbb8eb"
    assert.equal $(".events > li:eq(2) .title").text(), "created branch master at dcrec1/test", 
    assert.equal $(".events > li:eq(3) .title").text(), "created repository dcrec1/test", 

test 'renders comments', (assert) ->
  visit '/dhh'
  andThen ->
    assert.equal $(".events > li:eq(0) .title").text(), "commented on issue rails/rails#20338", 
    assert.equal $(".events > li:eq(1) .title").text(), "commented on pull request rails/rails#20362", 

