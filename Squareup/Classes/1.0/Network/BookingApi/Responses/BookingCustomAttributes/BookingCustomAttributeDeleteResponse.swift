//
//  BookingCustomAttributeDeleteResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

/// - BookingCustomAttributeDeleteResponse: Represents a response for an individual upsert request in a BulkDeleteBookingCustomAttributes operation.
/// https://developer.squareup.com/reference/square/objects/BookingCustomAttributeDeleteResponse
open class BookingCustomAttributeDeleteResponse: SquareupResponse {
    
    /// - BookingId: The ID of the booking associated with the custom attribute.
    public var BookingId: String?
    
    enum CodingKeys: String, CodingKey {
        case BookingId = "booking_id"
    }
}
