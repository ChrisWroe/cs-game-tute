exports.rooms = rooms =
    bedroom:
        description: 'A bedroom'
        exits:
            east: 'landing'
    landing:
        description: 'The landing'
        exits: 
            west: 'bedroom'
            east: 'dungeon'
    dungeon:
        description: 'a dark room with almost nothing in it. it smells funny'
        exits:
            north: 'hall'
            west: 'landing'
            
    hall:
        description: 'the main hallway. you can exit the castle from here'
        exits:
            north: 'path'
            south: 'bedroom'
    
    path:
        description: 'a long winding path'
        exits:
            north: 'forest'
            
    forest:
        description:'a deep dark forest filed with poisonous plants and vicious beasts'
        exits:
            south: 'path'

    
        
           