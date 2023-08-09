//
//  UpdatedResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

open class UpdatedResponse: SquareupResponse {
    
    var UpdatedAt: Date?
    
    enum CodingKeys: String, CodingKey {
        case UpdatedAt = "updated_at"
    }
    
    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        if let dateString = try? container.decodeIfPresent(String.self, forKey: .UpdatedAt), !dateString.isEmpty {
            self.UpdatedAt = try dateString.decode_RFC3339_Date()
        }
    }
}
