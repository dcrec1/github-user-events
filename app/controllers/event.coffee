`import Ember from 'ember'`

EventController = Ember.Controller.extend
  eventType: (-> "#{@model.type.replace("Event", "").toLowerCase()}-event").property 'model.type'

`export default EventController`
