//
//  CreateBookingRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

internal class CreateBookingRequest: Codable {
    
    /// - IdempotencyKey: A unique key to make this request an idempotent operation.
    /// Max Length 255
    var IdempotencyKey: String?
    /// - booking: The details of the booking to be created.
    var booking: Booking?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case booking = "booking"
    }
}
