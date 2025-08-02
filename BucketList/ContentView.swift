//
//  ContentView.swift
//  BucketList
//
//  Created by Zi on 02/08/2025.
//

import MapKit
import SwiftUI

struct Location: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct ContentView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D( latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    let locations = [
        Location(name: "Zi Palace", coordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.1412)),
        Location(name: "Ahm of London", coordinate: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.076))
    ]
        
    var body: some View {
        NavigationView{
            Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
                MapAnnotation(coordinate: location.coordinate){
                    NavigationLink{
                        Text(location.name)
                    } label: {
                        Circle()
                            .stroke(.red, lineWidth: 3)
                            .frame(width: 44, height: 44)
                    }
                }
            }
        }
        .navigationTitle("W Explored")
    }
}

#Preview {
    ContentView()
}
