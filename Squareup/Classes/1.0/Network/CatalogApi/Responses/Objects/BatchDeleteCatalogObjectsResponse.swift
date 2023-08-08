//
//  BatchDeleteCatalogObjectsResponse.swift
//  Business Calendar
//
//  Created by user on 1.06.23.
//

import Foundation

open class BatchDeleteCatalogObjectsResponse: SquareupResponse {
    
    var DeletedObjectIds = [String]()
    var DeletedAt: String?
    
    enum CodingKeys: String, CodingKey {
        case DeletedObjectIds = "deleted_object_ids"
        case DeletedAt = "deleted_at"
    }
}
