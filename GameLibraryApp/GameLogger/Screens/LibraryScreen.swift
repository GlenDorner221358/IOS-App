//
//  LibraryScreen.swift
//  GameLogger
//
//  Created by student on 2023/10/12.
//

import SwiftUI

struct LibraryScreen: View {
    
    var Game: Game
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.red, .white], startPoint: .top, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            
            VStack{
                NavigationView{
                    NavigationLink(destination: HomeScreen()){
                        Image(systemName: "arrowshape.left.fill")
                        
                    }.navigationTitle("Back2Home")
                        .navigationBarTitleDisplayMode(.large)
                
                List {
                    Text(Game.title)
                    Text(Game.title)
                    Text(Game.title)
                }

            }
        }
    }
}

struct LibraryScreen_Previews: PreviewProvider {
    static var previews: some View {
        LibraryScreen(Game: dummyGame)
    }
}


