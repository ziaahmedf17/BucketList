//
//  Location.swift
//  BucketList
//
//  Created by Zi on 04/08/2025.
//

import Foundation

struct Location: Identifiable, Codable, Equatable{
    let id: UUID
    var name: String
    var description: String
    var latitude: Double
    var longitude: Double
    
    
}
