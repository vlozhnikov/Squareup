//
//  CancelBookingResponse.swift
//  Business Calendar
//
//  Created by user on 2.06.23.
//

import Foundation

open class CancelBookingResponse: SquareupResponse {
    
    /// - booking: The booking that was requested.
    var booking: Booking?
    
    enum CodingKeys: String, CodingKey {
        case booking = "booking"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.booking = try container.decodeIfPresent(Booking.self, forKey: .booking)
    }
}
