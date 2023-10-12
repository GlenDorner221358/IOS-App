//
//  SingleItemScreen.swift
//  GameLogger
//
//  Created by student on 2023/10/05.
//

import SwiftUI

struct SingleItemScreen: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.brown, .white], startPoint: .top, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            
            VStack{
                HStack{
                    Image(systemName: "arrowshape.left")
                    
                    Text("Item Name here")
                        .font(.title3)
                }// END TOP STUFF
                 
                Spacer()
                
                HStack{
                    Image(systemName: "flame")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.black)
                        .frame(width: 50, height: 90)
                    VStack{
                        Text("Title")
                        Text("Release Date")
                        Text("Studio")
                        Text("Genre")
                        
                    }//END DESC
                    
                }// END IMAGE AND NUMBERS
                Text("Long description of the game goes here")
                    .padding(20)
                
                Spacer()
            }
            
            
        }//END ZSTACK
    }
}

struct SingleItemScreen_Previews: PreviewProvider {
    static var previews: some View {
        SingleItemScreen()
    }
}
