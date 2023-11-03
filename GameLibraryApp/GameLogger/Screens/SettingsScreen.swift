//
//  SettingsScreen.swift
//  GameLogger
//
//  Created by Glen

import SwiftUI

struct SettingsScreen: View {
    // environment var is a var that defines environment/context of app
    @Environment(\.dismiss) var dismiss

    @Environment(\.colorScheme) var colorScheme //how to access the devices light/dark settings
    // COLORSCHEME IS NOT APP SPECIFIC

    @State var username = ""

    @AppStorage("displayMode") var displayMode = "primary"

    var body: some View {
        VStack (spacing: 20) {
            // Header section
            HStack {
              Text("Settings")
                .font(.title)
              Spacer()
              Image(systemName: "xmark.circle.fill")  
                .font(.title2)
                .onTapGesture { //on click
                    dismiss()
                }
            }.padding(.bottom, 20)

            Text("Username")
            TextField("Your Username", text: $username)
                .padding()
                .background(.blue)
                .cornerRadius(20)
                .foregroundColor(.white)


            Text("Display Mode")
            Picker("Mode", selection: $displayMode){
                Text("Primary").tag("primary")
                Text("Evil-mode").tag("evilmode")
            }
            .pickerStyle(.segmented)
            .padding(.bottom, 30)

            // About the app
            GroupBox{
                HStack{
                    Text("Developer:")
                    Spacer()
                    // How to make a browser link
                    Link("Github", destination: URL(string: "https://github.com/GlenDorner221358/IOS-App")!)
                        .bold()
                    Image(systemName: "link")
                }

                Divider()

                HStack{
                    Text("Version Number: ")
                    Spacer()
                    Text("1.0")
                        .bold()
                }
            }

            Divider().padding()

            // Short description accordion
            GroupBox{
                DisclosureGroup("App Description"){
                    Text("Welcome to GameLogger, an all in one library tool to catalogue your games collection! Forgot how to play? The handy-dandy tutorial feature tells you exactly how to turn on and play the game! Just follow the simple steps provided. ").padding().bold(false)
                }.foregroundColor(colorScheme == .light ? .black : .white).bold()
            }

            if(colorScheme == .light){
                Text("\(colorScheme == .dark ? "Evil" : "Light") mode is activated")
            }

//            Spacer()
            
        }//END OF VSTACK
        .padding()
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
