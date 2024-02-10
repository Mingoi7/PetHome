//
//  SwiftUIView.swift
//  PetHome
//
//  Created by Mingo Chan on 10/2/2024.
//

import SwiftUI

struct HomeView: View {

    var body: some View {
        VStack(alignment: .leading, spacing : 10) {
            Spacer()
            Text("Home")
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
            
            Spacer()
            Text("About us").font(.title2)
            Text("1.PetHome's gives background and values.")
            Text("2.Discover PetHome's story and mission for pet care")
            Text("3.Explore PetHome's history, team, and commitment to pet safety.")
            Text("4.Learn about PetHome's dedication to top-notch pet care and well-being.")
            Text("")
            Spacer()
            Spacer()
        }
        .padding(10.0)
    }
}

struct HomeView_Previews:PreviewProvider {
    static var previews: some View{
        HomeView()
    }
}
