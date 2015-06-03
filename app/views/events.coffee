`import Ember from 'ember'`

EventsView = Ember.View.extend
  didInsertElement: ->
    $(window).bind "scroll", =>
      @get('controller').loadMore() if @_isScrolledToBottom()

  willDestroyElement: ->
    $(window).unbind('scroll')

  _isScrolledToBottom: ->
    distanceToTop = $(document).height() - $(window).height()
    top           = $(document).scrollTop()
    top is distanceToTop

`export default EventsView`
