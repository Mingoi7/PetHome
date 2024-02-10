//
//  MapView.swift
//  PetHome
//
//  Created by Mingo Chan on 10/2/2024.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: UIViewRepresentable {
    var searchString = ""
    
    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapView
        init(_ parent: MapView) {
            self.parent = parent
        }
        func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
            print("Center Coordinate: \(mapView.centerCoordinate)")
        }
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        let mapView = MKMapView()
        let searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = searchString
        let search = MKLocalSearch(request: searchRequest)
        search.start { response, error in
            guard let response = response else {
                print("Error: \(error?.localizedDescription ?? "Unknown error").")
                return
            }
            mapView.setRegion(response.boundingRegion, animated: true) //
        }
        return mapView
    }
    
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
    }
}

struct MapView_Previews:PreviewProvider {
    static var previews: some View{
        MapView(searchString: "雅各動物醫院")
    }
}
