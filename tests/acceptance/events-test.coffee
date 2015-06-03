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
    assert.ok $("#username_input").size() > 0

test 'visiting /:username', (assert) ->
  visit '/dcrec1'
  andThen ->
    assert.ok $(".events").html().indexOf("ago") > -1
