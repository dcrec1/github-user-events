`import Ember from 'ember';`
`import config from './config/environment';`

Router = Ember.Router.extend
  notifyGoogleAnalytics: (-> ga 'send', 'pageview').on('didTransition')
  location: config.locationType

Router.map ->
  @route 'events', path: ':username'

`export default Router;`
