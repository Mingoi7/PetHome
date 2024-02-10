//
//  DetailView.swift
//  PetHome
//
//  Created by Mingo Chan on 8/2/2024.
//

import Foundation
import SwiftUI

struct ParkDetailView: View {
    var park : Park

    var body: some View {
        VStack(spacing : 10) {
            Text("\(park.Name_cn) \(park.Name_en)").bold()
            Text("\(park.Address_cn)")
            Text("\(park.Address_en)")
            Text("\(park.District_cn) \(park.District_en)")
            Text("Opening hours : \(park.Opening_hours_en)")
            Text("Phone : \(park.Phone)")
            
            NavigationLink(destination: MapView(searchString: park.Name_cn)){
                VStack(alignment: .leading) {
                    Text("Map")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .background(.purple)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .padding(10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(.purple, lineWidth: 5)
                        }
                }
            }
        }
    }
}

struct ParkDetailView_Previews:PreviewProvider {
    static var previews: some View{
        ParkDetailView(park: .samplePark)
    }
}
