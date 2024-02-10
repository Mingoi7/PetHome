//
//  ParkView.swift
//  PetHome
//
//  Created by Mingo Chan on 9/2/2024.
//

import Foundation
import SwiftUI

struct ParkView:View {
    private var park: [Park] = Park.allPark
    private var listOfPark = Park.allPark
    @State var searchText = ""
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredparks, id: \.Name_cn) { park in
                    NavigationLink(destination: ParkDetailView(park:park)){
                        VStack(alignment: .leading) {
                            Text("\(park.Name_cn)").bold()
                            Text("\(park.Name_en)").bold()
                        }
                    }
                }
                
            }
            .searchable(text: $searchText, prompt: "Search by English")
            .navigationTitle("Pet Park")
        }
        .cornerRadius(10)
    }
    
    var filteredparks: [Park] {
        guard !searchText.isEmpty else { return park }
        return park.filter{ $0.Name_en.localizedCaseInsensitiveContains(searchText) }
    }
}

struct ParkView_Previews:PreviewProvider {
    static var previews: some View{
        ParkView()
    }
}
