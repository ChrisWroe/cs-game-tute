exports.rooms = rooms =
    bedroom:
        id : '1'
        description: 'A bedroom'
        exits:
            east: 2
    2:
        id: 2
        description: 'The landing'
        exists: 
            west: 1
    dungeon:
        description: 'a dark room with almost nothing in it. it smells funny'
        exits:
            north: 4
            west: 2
            
    hall:
        description: 'the main hallway. you can exit the castle from here'
        exits:
            north: 5
            south: 1
    
    path:
        description: 'a long winding path'
        exits:
            north: 6
            
    forest:
        description:'a deep dark forest filed with poisonous plants and vicious beasts'
        exits:
            north: 7
            south: 5
            east: 8
            west: 9
    
        
           