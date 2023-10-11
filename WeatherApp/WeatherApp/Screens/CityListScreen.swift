//
//  CityListScreen.swift
//  WeatherApp
//
//  Created by student on 2023/10/04.
//

import SwiftUI

struct CityListScreen: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination: WeatherScreen()){
                Text("Go To Weather Screen")
                
            }
                .navigationTitle("All Cities")
                .navigationBarTitleDisplayMode(.large)
        }//END OF NAV VIEW
    }
}

struct CityListScreen_Previews: PreviewProvider {
    static var previews: some View {
        CityListScreen()
    }
}
