//
//  CatalogObjectsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

open class CatalogObjectsResponse: SquareupResponse {
    
    /// - Objects: The created successfully created CatalogObjects.
    public var Objects: [CatalogObject]?
    /// - UpdatedAt: The database timestamp of this update in RFC 3339 format, e.g., "2016-09-04T23:59:33.123Z".
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
    public var UpdatedAt: Date?
    /// - IdMappings: The mapping between client and server IDs for this upsert.
    public var IdMappings: [CatalogIdMapping]?
    
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
