//
//  DeleteCatalogObjectResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 5.05.23.
//

import Foundation

open class DeleteCatalogObjectResponse: SquareupResponse {
    
    var DeletedObjectIds: [String]?
    var DeletedAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case DeletedObjectIds = "deleted_object_ids"
        case DeletedAt = "deleted_at"
    }
    
    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.DeletedObjectIds = try container.decodeIfPresent([String].self, forKey: .DeletedObjectIds)
        if let dateString = try? container.decodeIfPresent(String.self, forKey: .DeletedAt), !dateString.isEmpty {
            self.DeletedAt = try dateString.decode_RFC3339_Date()
        }
    }
}
