rooms = require('code-complete/rooms-complete').rooms
player = require('code-complete/player-complete').player

move_pattern = /go (north|south|east|west)/i
obey_instruction = (instruction)->
    move_info = move_pattern.exec(instruction)
    response = ''
    if move_info?
        direction=move_info[1]
        
        if direction in _.keys(rooms[player.position].exits)
            new_position = rooms[player.position].exits[direction]
            response = "You went #{direction}."
            player.position = new_position
        else
            response = "You cannot go that way"
    else
        response = "I don't understand yet"
    response
    
add_response = (response) ->
    text_box = $('#response')
    text_box.append("<p>#{response}</p>")
    
    # make sure text is scrolled to the bottom
    height = text_box.prop('scrollHeight')
    if height > 150
        text_box.scrollTop(height-150)
    
tell_position = () ->
    exits_string = _.keys(rooms[player.position].exits).join(', ')
    add_response("You are in the #{player.position}. You can go #{exits_string}")
    
game_loop = ()->
        instruction = $('#instruction').val() # the text within the box
        response = obey_instruction(instruction)
        add_response(response)
        tell_position()
        
        
exports.initialize = () -> 
    tell_position()

    $('#doit').click(game_loop)
    $('#instruction').keyup((event)->
        if event.keyCode is 13
            game_loop()
        )
    
    