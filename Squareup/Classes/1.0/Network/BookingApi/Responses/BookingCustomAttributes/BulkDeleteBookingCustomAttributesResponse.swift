//
//  BulkDeleteBookingCustomAttributesResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class BulkDeleteBookingCustomAttributesResponse: SquareupResponse {
    
    /// - Values: A map of responses that correspond to individual delete requests. Each response has the same ID as the corresponding request and contains booking_id and errors field.
    var Values: [String: BookingCustomAttributeDeleteResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
}
