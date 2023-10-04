//
//  ContentView.swift
//  WeatherApp
//
//  Created by student on 2023/09/27.
//
//imports go here
import SwiftUI

struct ContentView: View {
//    variables go here
    let name = "Glen"
    
    var body: some View {
        
//        code for a button
        Button(action: {
            print("bababooie")
        }) {
//            appearance of the button
            Text(name)
                .bold()
                .foregroundColor(.red)
            //you can put them under each other like above or in a line
        }.background(.blue).padding()
        //to style button, add modifiers after the brackets
    }
}

//Makes the preview window
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

//Drawer top




//Drawer bottom
