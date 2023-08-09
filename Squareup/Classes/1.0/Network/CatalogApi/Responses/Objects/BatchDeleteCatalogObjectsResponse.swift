//
//  BatchDeleteCatalogObjectsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 1.06.23.
//

import Foundation

open class BatchDeleteCatalogObjectsResponse: SquareupResponse {
    
    var DeletedObjectIds: [String]?
    var DeletedAt: String?
    
    enum CodingKeys: String, CodingKey {
        case DeletedObjectIds = "deleted_object_ids"
        case DeletedAt = "deleted_at"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.DeletedObjectIds = try container.decodeIfPresent([String].self, forKey: .DeletedObjectIds)
        self.DeletedAt = try container.decodeIfPresent(String.self, forKey: .DeletedAt)
    }
}
