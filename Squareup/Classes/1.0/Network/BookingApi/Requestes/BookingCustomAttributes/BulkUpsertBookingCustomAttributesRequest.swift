//
//  BulkUpsertBookingCustomAttributesRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

internal class BulkUpsertBookingCustomAttributesRequest: Codable {
    
    /// - Values: A map containing 1 to 25 individual upsert requests. For each request, provide an arbitrary ID that is unique for this BulkUpsertBookingCustomAttributes request and the information needed to create or update a custom attribute.
    var Values: [String: BookingCustomAttributeUpsertRequest]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
}
