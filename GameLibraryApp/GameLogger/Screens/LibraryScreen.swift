//
//  LibraryScreen.swift
//  GameLogger
//
//  Created by student on 2023/10/12.
//

import SwiftUI

struct LibraryScreen: View {
// var that toggles the settings screen
    //@state is a usestate
    @State var showSettings: Bool = false

    // State variable for searching a game
    @State var searchText = ""

    // does display mode
    @AppStorage("displayMode") var displayMode = "primary"

    // Search function
    // step 1: make a var for the search results
    // Step 2: set variable to a function with an if
    var searchResult: [Game] {
        // if searchtext is null, show everything
        if(searchText.isEmpty) {
            return GameData
        } else { //else return cities that contain searched text
            return GameData.filter{ $0.title.contains(searchText) }
        }
    }

    var Game: Game
    
    var body: some View {
        // colors the page
        ZStack{
            LinearGradient(colors: [.teal, .white], startPoint: .top, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)

            NavigationView{
                List{
                    // Loops through each game in the file where I store all my games
                    ForEach(searchResult){ game in
                        NavigationLink(destination: SingleItemScreen(Game: game)) {
                            HStack{
                                Image("\(Game.cover)")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 50)
                                    .padding(10)
                                    .foregroundColor(.white)
                                    .background(.teal)
                                    .cornerRadius(10)

                                VStack(alignment: .leading){
                                    Text(game.title)
    //                                    .alignment(.trailing)
                                        .font(.title2)
                                        .bold()
                                    Text(Game.dev)
                                        .font(.title3)
                                    Text(game.releaseDate)
                                }//END OF VSTACK

                                

                            }//END OF HSTACK (individual)
                        }//END OF NAVLINK

                    }//END OF FOR LOOP 

                }//END OF LIST  
                .listStyle(.inset) //changes the styling of list
                .navigationTitle("All Games") //inside navigationView
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: Button(action: {
                    showSettings.toggle()
                }){
                Image(systemName: "gearshape")
                })

            }//END OF NAV VIEW
            .searchable(text: $searchText)
            .sheet(isPresented: $showSettings){
                SettingsScreen()
            }
        }// END OF ZSTACK
    } 
    
}

struct LibraryScreen_Previews: PreviewProvider {
    static var previews: some View {
        LibraryScreen(Game: dummyGame)
    }
}


