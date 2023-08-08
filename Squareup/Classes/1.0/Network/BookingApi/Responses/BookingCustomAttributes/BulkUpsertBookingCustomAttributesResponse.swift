//
//  BulkUpsertBookingCustomAttributesResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class BulkUpsertBookingCustomAttributesResponse: SquareupResponse {
    
    /// - Values: A map of responses that correspond to individual upsert requests. Each response has the same ID as the corresponding request and contains either a booking_id and custom_attribute or an errors field.
    public var Values: [String: BookingCustomAttributeUpsertResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Values = try container.decodeIfPresent([String: BookingCustomAttributeUpsertResponse].self, forKey: .Values)
    }
}
