//
//  SettingsScreen.swift
//  Weather App
//
//  Created by student on 2023/10/18.
//

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
            }

            // About the app
            GroupBox{
                HStack{
                    Text("Developed by")
                    Spacer()
                    // How to make a browser link
                    Link("Github", destination: URL(string: "https://github.com/")!)
                        .bold()
                    Image(systemName: "link")
                }

                Divider()

                HStack{
                    Text("Version: ")
                    Spacer()
                    Text("1.0.0")
                        .bold()
                }
            }

            Divider().padding()

            // Short description accordion
            GroupBox{
                DisclosureGroup("About this app"){
                    Text("This is babys first weather app. Lorem ipsum dolor sit amet or some bs").padding().bold(false)
                }.foregroundColor(colorScheme == .Light ? .black : .white).bold()
            }

            if(colorScheme == .light){
                Text("Color scheme is set to \(colorScheme == .dark ? "Dark" : "Light")")
            }

            Text("Your Username")
            TextField("Your Username", text: $username)
                .padding()
                .background(.blue)
                .cornerRadius(20)


            Text("Display Mode")
            Picker("Mode", selection: $displayMode){
                Text("Primary").tag("primary")
                Text("Secondary").tag("secondary")
            }
            .pickerStyle(.segmented)

            Spacer()
        }//END OF VSTACK
        .padding()
    }
}

#Preview {
    SettingsScreen()
}
