//
//  ListBookingResponse.swift
//  Business Calendar
//
//  Created by user on 2.06.23.
//

import Foundation

open class ListBookingResponse: SquareupResponse {
    
    var Bookings: [Booking]?
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Bookings = "bookings"
        case Cursor = "cursor"
    }
}
