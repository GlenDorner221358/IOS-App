//
//  SingleItemScreen.swift
//  GameLogger
//
//  Created by student on 2023/10/05.
//

import SwiftUI

struct SingleItemScreen: View {

    var Game: Game


    var body: some View {
        ZStack{
            LinearGradient(colors: [.brown, .white], startPoint: .top, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            
                VStack{
                    Image(systemName: "arrowshape.left")
                }// END TOP STUFF
                 
                Spacer()
                
                // HStack{
                //     Image(systemName: "flame")
                //         .renderingMode(.original)
                //         .resizable()
                //         .scaledToFit()
                //         .foregroundColor(.black)
                //         .frame(width: 50, height: 90)
                //     VStack{
                //         Text("Title")
                //         Text("Release Date")
                //         Text("Studio")
                //         Text("Genre")
                        
                //     }//END DESC
                    
                // }// END IMAGE AND NUMBERS
                // Text("Long description of the game goes here")
                //     .padding(20)
                
                // Spacer()

                VStack(spacing: 20){
                    //-Top Main Info
                    Text("\(game.title)") //interpulation
                        .font(.title1)
                        .foregroundColor(.white)
                        .padding(.vertical)
                    
                    Image(systemName: game.cover)
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(width: 140, height: 140)
                    
                    Text("\(game.releaseDate)")
                        .font(.system(size: 64))
                        .bold()
                        .foregroundColor(.white)
                    
                    
                    Text("Wed, 3 October 2023")
                        .font(.headline)
                        .foregroundColor(.white)
                    
                }
            
            
        }//END ZSTACK
    }
}

struct SingleItemScreen_Previews: PreviewProvider {
    static var previews: some View {
        SingleItemScreen()
    }
}
