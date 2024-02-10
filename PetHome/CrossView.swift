//
//  CrossView.swift
//  PetHome
//
//  Created by Mingo Chan on 9/2/2024.
//

import Foundation
import SwiftUI

struct CrossView:View {
    private var cross: [Cross] = Cross.allCross
    private var listOfCross = Cross.allCross
    @State var searchText = ""
    var body: some View {
        NavigationView {
            List {
                ForEach(filteredcross, id: \.CLINIC) { cross in
                    NavigationLink(destination: CrossDetailView(cross:cross)){
                        VStack(alignment: .leading) {
                            Text("\(cross.CLINIC)").bold()
                        }
                    }
                }
                
            }
            .searchable(text: $searchText, prompt: "Search by Chinese")
            .navigationTitle("Pet Cross")
        }
        .cornerRadius(10)
    }
    
    var filteredcross: [Cross] {
        guard !searchText.isEmpty else { return cross }
        return cross.filter{ $0.CLINIC.localizedCaseInsensitiveContains(searchText) }
    }
}

struct CrossView_Previews:PreviewProvider {
    static var previews: some View{
        CrossView()
    }
}


