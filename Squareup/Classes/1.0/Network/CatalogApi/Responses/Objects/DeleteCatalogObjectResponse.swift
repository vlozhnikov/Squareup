//
//  DeleteCatalogObjectResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 5.05.23.
//

import Foundation

open class DeleteCatalogObjectResponse: SquareupResponse {
    
    /// - DeletedObjectIds: The IDs of all catalog objects deleted by this request. Multiple IDs may be returned when associated objects are also deleted, for example a catalog item variation will be deleted (and its ID included in this field) when its parent catalog item is deleted.
    var DeletedObjectIds: [String]?
    /// - DeletedAt: The database timestamp of this deletion in RFC 3339 format, e.g., 2016-09-04T23:59:33.123Z.
    /// Examples for January 25th, 2020 6:25:34pm Pacific Standard Time:
    ///
    /// UTC: 2020-01-26T02:25:34Z
    ///
    /// Pacific Standard Time with UTC offset: 2020-01-25T18:25:34-08:00
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
