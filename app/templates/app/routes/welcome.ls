require! <[ reflex ./base-route ]>
layout = reflex.dom require '../components/layout'

d = reflex.DOM

module.exports = class extends base-route
  display-name: 'welcome-page'
  get-title: -> super "Welcome!"
  render: ->
    layout do
      d.h1 "Welcome! This is your first Reflex app."
      d.p (@props.app-state.get \state.message).deref!
