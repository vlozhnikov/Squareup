//
//  UpdateCatalogImageResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 5.05.23.
//

import Foundation

open class UpdateCatalogImageResponse: SquareupResponse {
    
    /// - Image: The newly updated CatalogImage including a Square-generated URL for the encapsulated image file.
    public var Image: CatalogObject?
    
    enum CodingKeys: String, CodingKey {
        case Image = "image"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Image = try container.decodeIfPresent(CatalogObject.self, forKey: .Image)
    }
}
