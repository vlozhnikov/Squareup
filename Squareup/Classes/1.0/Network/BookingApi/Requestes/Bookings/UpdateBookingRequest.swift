//
//  UpdateBookingRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

internal class UpdateBookingRequest: Codable {
    
    /// - IdempotencyKey: A unique key to make this request an idempotent operation.
    /// Max Length 255
    var IdempotencyKey: String?
    /// - booking: The booking to be updated. Individual attributes explicitly specified here override the corresponding values of the existing booking.
    var booking: Booking?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case booking = "booking"
    }
}
