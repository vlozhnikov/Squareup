//
//  BatchDeleteCatalogObjectsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 1.06.23.
//

import Foundation

open class BatchDeleteCatalogObjectsRequest: Codable {
    
    public var ObjectIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case ObjectIds = "object_ids"
    }
}
