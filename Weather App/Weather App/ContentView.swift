//
//  ContentView.swift
//  Weather App
//
//  Created by OW on 2023/09/27.
//

// IMPORTS :- All of our packages we want to use
import SwiftUI


// VIEW :- Think of this struct as a component / sub view
struct ContentView: View {
    
    //here we can difine any of our variables and funcs
    let name = "Armand"
    
    //body = SWIFTUI CODE
    var body: some View {
        
        //STACKS = divs that can place items to be vertical (V), horizontal (H) or on top off each other (Z)
        ZStack{ //stack the views inside on top of each other
            
            Color("AccentColor")
                .ignoresSafeArea(.all)
            
            VStack(alignment: .center) { //places it vertically
                
                Image(systemName: "cloud")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    .frame(width: 250, height: 250)
                
                HStack(alignment: .bottom, spacing: 20) {
                    Text("hello")
                    Text(name)
                        .bold()
                }
                
            }
        
        }
        
       
        
        
//        Text(name) //every view is called like it is a function
//
//        //example of a control Button(//functionality as an action) { //how the button should look }
//        Button(action: {
//            //functionality
//            print("Hello")
//        }) {
//
//            Image(systemName: "cloud.bolt.rain")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 200, height: 200)
//                .foregroundColor(.white)
//
//
//
//
//            //appearance of the button
////            Text(name)
////                .bold() //modifiers = functions to modify the style of my views ( VIEW().MODIFIER().MODIFIER()
////                .foregroundColor(Color("ErrorColor"))
////                .padding()
////
////            Text("Placeholder").italic()
//            //<h1 style="bold"></h1>
//            //Image
//        }
//        .background(.gray)
//        .padding()
        
        
    }
}

// PREVIEW STRUCTURE :- this is what makes us see the preview on the right side
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// Drawer Top = box

//box to hold your pens = box

//box for your notes = box

//Drawer Bottom
