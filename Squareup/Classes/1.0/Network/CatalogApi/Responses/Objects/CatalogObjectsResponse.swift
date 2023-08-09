//
//  CatalogObjectsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

open class CatalogObjectsResponse: SquareupResponse {
    
    public var Objects: [CatalogObject]?
    var UpdatedAt: Date?
    var IdMappings: [CatalogIdMapping]?
    
    enum CodingKeys: String, CodingKey {
        case Objects = "objects"
        case UpdatedAt = "updated_at"
        case IdMappings = "id_mappings"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Objects = try container.decodeIfPresent([CatalogObject].self, forKey: .Objects)
        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
            self.UpdatedAt = try dateString.decode_RFC3339_Date()
        }
        self.IdMappings = try container.decodeIfPresent([CatalogIdMapping].self, forKey: .IdMappings)
    }
}
