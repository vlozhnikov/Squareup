//
//  CatalogObjectBatch.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 28.05.23.
//

import Foundation

/// - CatalogObjectBatch: A batch of catalog objects.
/// https://developer.squareup.com/reference/square/objects/CatalogObjectBatch
open class CatalogObjectBatch: Codable {
    
    /// - Objects: A list of CatalogObjects belonging to this batch.
    public var Objects: [CatalogObject]?
    
    enum CodingKeys: String, CodingKey {
        case Objects = "objects"
    }
}
