//
//  SimpleMap.swift
//  CoockBookSwiftUI
//
//  Created by Marco Alonso Rodriguez on 25/11/22.
//

import SwiftUI
import MapKit

struct Place : Identifiable {
    let id = UUID()
    let name: String
    let coordinate : CLLocationCoordinate2D
}

struct SimpleMap: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 19.7670774, longitude: -101.15203), latitudinalMeters: 3900, longitudinalMeters: 3900)
    
    let annotations = [
    Place(name: "Stadium", coordinate:  CLLocationCoordinate2D(latitude: 19.71877, longitude: -101.30342)),
    Place(name: "Walmart", coordinate:  CLLocationCoordinate2D(latitude: 19.682643, longitude: -101.2466613)),
    Place(name: "Auto lavado", coordinate:  CLLocationCoordinate2D(latitude: 19.689577, longitude: -101.21912)),
    Place(name: "Canchas futbol", coordinate:  CLLocationCoordinate2D(latitude: 19.684287, longitude: -101.23672)),
    ]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: annotations) {
            MapPin(coordinate: $0.coordinate)
        }
    }
}

struct SimpleMap_Previews: PreviewProvider {
    static var previews: some View {
        SimpleMap()
    }
}
