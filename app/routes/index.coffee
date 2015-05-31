`import Ember from 'ember';`

Route = Ember.Route.extend
  actions:
    fetchEvents: ->
      @transitionTo "/#{$("#username_input").val()}"

`export default Route`
