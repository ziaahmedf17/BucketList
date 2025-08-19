//
//  FileManager-DocumentsDirectory.swift
//  BucketList
//
//  Created by Zi on 07/08/2025.
//

import Foundation

extension FileManager{
    static var documentDirectory: URL{
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
