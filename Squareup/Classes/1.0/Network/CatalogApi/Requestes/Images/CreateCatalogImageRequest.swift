//
//  CreateCatalogImageRequest.swift
//  Business Calendar
//
//  Created by user on 5.05.23.
//

import Foundation
import Alamofire

internal class CreateCatalogImageRequest: Codable {
    
    var IdempotencyKey: String?
    var ObjectId: String?
    var Image: CatalogObject?
    var IsPrimary: Bool?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case ObjectId = "object_id"
        case Image = "image"
        case IsPrimary = "is_primary"
    }
}
