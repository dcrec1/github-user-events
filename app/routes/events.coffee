`import Ember from 'ember';`
`import loadEvents from '../helpers/load-events';`

Route = Ember.Route.extend
  setupController: (controller, model) ->
    controller.set 'page', 1
    controller.set 'model', model

  model: (params) ->
    loadEvents params.username

`export default Route;`
