# App Namespace
@Adventure ?= {}
Adventure.Game ?= {}

$ ->
    # Initialize App
    Adventure.Game = require 'code/game'