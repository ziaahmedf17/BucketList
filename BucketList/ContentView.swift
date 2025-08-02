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
    let locations:[
        Location(nam)
    ]
        
    }
    var body: some View {
        Map(coordinateRegion: $mapRegion)
    }
}

#Preview {
    ContentView()
}
