//
//  HomeScreen.swift
//  GameLogger
//
//  Created by student on 2023/10/12.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.teal, .white], startPoint: .top, endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
            
            VStack{
                HStack{
                    Image(systemName: "gearshape.fill")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding(.leading)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                        TextField("Search...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    }.padding(10).background(.white).cornerRadius(20).frame(width: 100, height: 50)
                }//END SETTINGS AND SEARCH
                Spacer()
                        
                Button("New Item") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                
                Spacer()
                
                
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
