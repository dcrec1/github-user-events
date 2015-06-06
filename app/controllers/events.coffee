`import Ember from 'ember'`
`import loadEvents from '../helpers/load-events';`

EventsController = Ember.ArrayController.extend
  itemController: 'event'

  loadMore: ->
    model = @get('model')[0]
    loadEvents(model.actor.login, ++@page).then (data) =>
      @pushObjects data

`export default EventsController`
