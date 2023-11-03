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
            LinearGradient(colors: [.mint, .brown], startPoint: .top, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)

                VStack(spacing: 5){
                    //-Top Main Info
                    Image(Game.cover)
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(width: 300, height: 300)
                    
                    Text("\(Game.title)") //interpulation
                        .font(.system(size:50))
                        .foregroundColor(.orange)
                        .bold()
                        .padding(.vertical)
                            
                    
                    Text("\(Game.releaseDate)")
                        .font(.system(size: 24))
                        .bold()
                        .foregroundColor(.white)
                    
                    Text("\(Game.dev)")
                        .font(.system(size: 24))
                        .bold()
                        .foregroundColor(.white)
                    
                    Spacer()
                    Text("Description")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                    
                    GroupBox{
                        DisclosureGroup("Extend"){
                            Text("\(Game.description)").padding(10).bold(false)
                        }
                    }.padding(20)
                    
                    Spacer()
                    Text("How to play:")
                        .font(.title2)
                        .foregroundColor(.white)
                        .bold()

                    GroupBox{
                        DisclosureGroup("Extend"){
                            Text("\(Game.how2play)").padding(10).bold(false)
                        }
                    }.padding(20)
                    
                }//END VSTACK
            
            
        }//END ZSTACK
    }
}

struct SingleItemScreen_Previews: PreviewProvider {
    static var previews: some View {
        SingleItemScreen(Game: dummyGame)
    }
}
