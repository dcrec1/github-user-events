`import Ember from 'ember'`

TruncateHelper = Ember.HTMLBars.makeBoundHelper (text, options) ->
  if text[0].length > options['limit']
    "#{text[0].substr(0, options['limit'] - 3)}..."
  else
    text[0]

`export default TruncateHelper`
