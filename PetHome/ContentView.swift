//
//  ContentView.swift
//  PetHome
//
//  Created by Mingo Chan on 8/2/2024.
//

import SwiftUI
import CoreData
import MapKit
import CoreLocation


struct ContentView: View {
    
    var body: some View {
        TabView{
            
            HomeView().tabItem {
                Image(systemName: "house")
                Text("House")
            }
            
            ParkView().tabItem {
                Image(systemName: "dog")
                Text("Park")
            }
            
            CrossView().tabItem {
                Image(systemName: "cross")
                Text("Hospital")
            }

            PhotoView().tabItem {
                Image(systemName: "photo")
                Text("Photo")
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
        }
    }
}
