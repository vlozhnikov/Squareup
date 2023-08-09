//
//  RetrieveCashDrawerShiftRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 30.06.23.
//

import Foundation

open class RetrieveCashDrawerShiftRequest: Codable {
    
    /// - LocationId: The ID of the location to retrieve cash drawer shifts from.
    public var LocationId: String?
    
    enum CodingKeys: String, CodingKey {
        case LocationId = "location_id"
    }
}
