`import Ember from 'ember'`

EventsController = Ember.ArrayController.extend
  itemController: 'event'

  loadMore: ->
    $.getJSON("https://api.github.com/users/dcrec1/events?page=2").then (data) =>
      @set 'model', @get('model').concat(data)

`export default EventsController`
