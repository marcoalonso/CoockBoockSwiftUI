//
//  CustomAnnotation.swift
//  CoockBookSwiftUI
//
//  Created by Marco Alonso Rodriguez on 10/01/23.
//

import SwiftUI
import MapKit


struct CustomAnnotation: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 19.7670774, longitude: -101.15203), latitudinalMeters: 5000, longitudinalMeters: 5000)
    
    let annotations = [
    Place(name: "Stadium", coordinate:  CLLocationCoordinate2D(latitude: 19.81877, longitude: -101.30342)),
    Place(name: "Walmart", coordinate:  CLLocationCoordinate2D(latitude: 19.612643, longitude: -101.3566613)),
    Place(name: "Auto lavado", coordinate:  CLLocationCoordinate2D(latitude: 19.289577, longitude: -101.21912)),
    Place(name: "Canchas futbol", coordinate:  CLLocationCoordinate2D(latitude: 19.184287, longitude: -101.123672)),
    ]
    
    var rating: String {
        return String(format: "%.1f", Double.random(in: 1...5))
    }
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: annotations) { place in
            MapAnnotation(coordinate: place.coordinate) {
                HStack (spacing: 0) {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                    Text(rating)
                        .fixedSize()
                }.padding(10)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    .overlay(
                        Image(systemName: "arrowtriangle.left.fill")
                            .rotationEffect(Angle(degrees: 270))
                            .offset(y: 10)
                        , alignment: .bottom
                        )
            }
        }
    }
}

struct CustomAnnotation_Previews: PreviewProvider {
    static var previews: some View {
        CustomAnnotation()
    }
}
