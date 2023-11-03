import Foundation

//Gamedata blueprint

struct Game: Identifiable {
    var id = UUID() //unique id for each city that auto generates so dont have to make a new one
    var title: String
    var dev: String
    var genre: String
    var cover: String
    var description: String
    var releaseDate: String
    var platform: String
    var rating: String
    var how2play: String
}

//dummy city from blueprint for previews
let dummyGame: Game = Game(
    title: "SSX3",
    dev: "EA Sports BIG",
    genre: "Arcade",
    cover: "SSX_3_Coverart",
    description: "Extreme snowboarding arcade action, the greatest video game of all time. Excellent soundtrack, fun characters, in depth trick system. Whats not to like?",
    releaseDate: "20/10/2003",
    platform: "Playstation 2",
    rating: "9.4",
    how2play: "1) Put the disc into the playstation2. 2) Reset the console. 3) Allow game to load up. 4) Select 'Conquer the mountain' for campaign mode or 'single event' to do a single race. 5) Pick a character. 6) Rejoice in God's creation."
)
