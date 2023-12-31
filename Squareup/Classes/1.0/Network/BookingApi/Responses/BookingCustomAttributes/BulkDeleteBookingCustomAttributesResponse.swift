//
//  BulkDeleteBookingCustomAttributesResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

open class BulkDeleteBookingCustomAttributesResponse: SquareupResponse {
    
    /// - Values: A map of responses that correspond to individual delete requests. Each response has the same ID as the corresponding request and contains booking_id and errors field.
    public var Values: [String: BookingCustomAttributeDeleteResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Values = try container.decodeIfPresent([String: BookingCustomAttributeDeleteResponse].self, forKey: .Values)
    }
}
