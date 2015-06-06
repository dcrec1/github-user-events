`import Ember from 'ember'`

LoadEventsHelper = (login, page = 1) ->
  $.getJSON "https://api.github.com/users/#{login}/events?page=#{page}"

`export default LoadEventsHelper`
