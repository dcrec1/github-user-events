`import Ember from 'ember'`

TruncateHelper = Ember.HTMLBars.makeBoundHelper (text, options) ->
  if options['points'] isnt false and text[0].length > options['limit']
    "#{text[0].substr(0, options['limit'] - 3)}..."
  else
    text[0].substr(0, options['limit'])

`export default TruncateHelper`
