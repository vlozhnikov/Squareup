//
//  CreateCatalogImageRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 5.05.23.
//

import Foundation
import Alamofire

open class CreateCatalogImageRequest: Codable {
    
    /// - IdempotencyKey: A unique string that identifies this CreateCatalogImage request. Keys can be any valid string but must be unique for every CreateCatalogImage request.
    /// See Idempotency keys for more information.
    /// Min Length 1
    public var IdempotencyKey: String?
    /// - ObjectId: Unique ID of the CatalogObject to attach this CatalogImage object to. Leave this field empty to create unattached images, for example if you are building an integration where an image can be attached to catalog items at a later time.
    public var ObjectId: String?
    /// - Image: The new CatalogObject of the IMAGE type, namely, a CatalogImage object, to encapsulate the specified image file.
    public var Image: CatalogObject?
    /// - IsPrimary: If this is set to true, the image created will be the primary, or first image of the object referenced by object_id. If the CatalogObject already has a primary CatalogImage, setting this field to true will replace the primary image. If this is set to false and you use the Square API version 2021-12-15 or later, the image id will be appended to the list of image_ids on the object.
    /// With Square API version 2021-12-15 or later, the default value is false. Otherwise, the effective default value is true.
    public var IsPrimary: Bool?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case ObjectId = "object_id"
        case Image = "image"
        case IsPrimary = "is_primary"
    }
}
