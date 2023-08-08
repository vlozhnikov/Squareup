//
//  BulkDeleteBookingCustomAttributesRequest.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

internal class BulkDeleteBookingCustomAttributesRequest: Codable {
    
    /// - Values: A map containing 1 to 25 individual Delete requests. For each request, provide an arbitrary ID that is unique for this BulkDeleteBookingCustomAttributes request and the information needed to delete a custom attribute.
    var Values: [String: BookingCustomAttributeDeleteRequest]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
}
