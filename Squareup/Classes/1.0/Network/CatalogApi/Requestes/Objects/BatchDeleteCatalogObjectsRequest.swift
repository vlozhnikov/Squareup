//
//  BatchDeleteCatalogObjectsRequest.swift
//  Business Calendar
//
//  Created by user on 1.06.23.
//

import Foundation

internal class BatchDeleteCatalogObjectsRequest: Codable {
    
    var ObjectIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case ObjectIds = "object_ids"
    }
}
