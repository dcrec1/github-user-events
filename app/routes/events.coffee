`import Ember from 'ember';`

Route = Ember.Route.extend
  model: (params) ->
    $.getJSON "https://api.github.com/users/#{params.username}/events"

`export default Route;`
