//
//  ContentView.swift
//  BucketList
//
//  Created by Zi on 02/08/2025.
//

import MapKit
import SwiftUI

struct ContentView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D( latitude: 55, longitude: 0), span: MKCoordinateSpan(latitudeDelta: 25, longitudeDelta: 25))
    @State private var locations = [Location]()
        
    var body: some View {
        ZStack{
            Map(coordinateRegion: $mapRegion, annotationItems: locations){locations in
                MapMarker(coordinate: CLLocationCoordinate2D(latitude: locations.latitude, longitude: locations.longitude))
            }
                .ignoresSafeArea()
            Circle()
                .fill(.blue)
                .opacity(0.3)
                .frame(width: 32, height: 32)
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    Button{
                        let newLocation = Location(id: UUID(), name: "New Location", description: "", latitude: mapRegion.center.latitude, longitude: mapRegion.center.longitude)
                        locations.append(newLocation)
                    } label: {
                        Image(systemName: "plus")
                    }
                    .padding()
                    .background(.black.opacity(0.75))
                    .font(.title)
                    .clipShape(Circle())
                    .padding(.trailing)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
