//
//  HomeScreen.swift
//  GameLogger
//
//  Created by student on 2023/10/12.
//

import SwiftUI

struct HomeScreen: View {

    var Game: Game

    var total = 0

    var body: some View {
        ZStack{
            LinearGradient(colors: [.teal, .white], startPoint: .top, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            
            VStack{
                Image(systemName: "gearshape.fill")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    

                Spacer()
                        
//                ForEach(){ game in
//                    total = total + 1
//                }

                Text("Total games: ")
                    .font(.title)
                    .bold()
//                    .alignment(.leading)
                
                Spacer()

                NavigationLink(destination: LibraryScreen( Game: Game)) {
                    Text("Browse collection")
                }//END OF NAVLINK

                
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(Game: dummyGame)
    }
}
