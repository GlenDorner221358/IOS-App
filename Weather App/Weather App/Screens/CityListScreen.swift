//
//  CityListScreen.swift
//  Weather App
//
//  Created by OW on 2023/10/04.
//

import SwiftUI

struct CityListScreen: View {
// var that toggles the settings screen
    //@state is a usestate
    @State var showSettings: Bool = false

    // State variable for searching a city
    @State var searchText = ""

    @AppStorage("displayMode") var displayMode = "primary"

    // Search function
    // step 1: make a var for the search results
    // Step 2: set variable to a function with an if
    var searchResult: [City] {
        // if searchtext is null, show everything
        if(searchText.isEmpty) {
            return CityData
        } else { //else return cities that contain searched text
            return CityData.filter{ $0.name.contains(searchText) }
        }
    }
    
    
    var body: some View {
        
        NavigationView{
            
            List{
                //looping through each city in my cityData file
                ForEach(searchResult){ city in //city is the new name for each value in my list
                    //CLASS EXERCISE pt 2 - attempt styling the layout for each city from the class slides
                    NavigationLink(destination: WeatherScreen(city: city)) { //pass the city as a param to the screen
                        HStack{
                            Image(systemName: city.icon)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .padding(10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(10)

                            VStack(alignment: .leading){
                                Text(city.name)
                                    .font(.title2)
                                Text(city.area)
                                
                            }

                            Spacer()

                            Text("\(city.maxTemperature)º")
                                .font(.title)
                                .bold()

                        }//END OF HSTACK (individual)
                    }//END Navigation link
                    
                }//END of loop
            }//END of LIST
            .listStyle(.inset) //changes the styling of list
            .navigationTitle("All Cities") //inside navigationView
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Button(action: {
                showSettings.toggle()
            }){
              Image(systemName: "gearshape")
            })
        }//END of navigation
        .searchable(text: $searchText)
        .sheet(isPresented: $showSettings){
                SettingsScreen()
        }
        
        //TODO: Add navbar button
        //TODO: Tabbar
        //TODO: Onboarding Screen
    }
}

struct CityListScreen_Previews: PreviewProvider {
    static var previews: some View {
        CityListScreen()
    }
}
