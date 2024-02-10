//
//  CrossDetailView.swift
//  PetHome
//
//  Created by Mingo Chan on 9/2/2024.
//

import Foundation
import SwiftUI

struct CrossDetailView: View {
    var cross : Cross

    var body: some View {
        VStack(spacing : 10) {
            Text("\(cross.CLINIC)").bold()
            Text("\(cross.ADDRESS)")
            Text("\(cross.PHONE)")
            NavigationLink(destination: MapView(searchString: cross.CLINIC)){
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

struct CrossDetailView_Previews:PreviewProvider {
    static var previews: some View{
        CrossDetailView(cross: .sampleCross)
    }
}

