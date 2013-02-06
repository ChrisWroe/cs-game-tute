# App Namespace
@Adventure ?= {}
Adventure.Game ?= {}

$ ->
    # Initialize App
    Adventure.Game = game = require 'code-complete/game-complete'
    game.initialize()