//
//  CreateCatalogImageRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 5.05.23.
//

import Foundation
import Alamofire

open class CreateCatalogImageRequest: Codable {
    
    public var IdempotencyKey: String?
    public var ObjectId: String?
    public var Image: CatalogObject?
    public var IsPrimary: Bool?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case ObjectId = "object_id"
        case Image = "image"
        case IsPrimary = "is_primary"
    }
}
