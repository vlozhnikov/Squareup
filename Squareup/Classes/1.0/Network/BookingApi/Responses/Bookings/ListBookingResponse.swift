//
//  ListBookingResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.06.23.
//

import Foundation

open class ListBookingResponse: SquareupResponse {
    
    var Bookings: [Booking]?
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Bookings = "bookings"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Bookings = try container.decodeIfPresent([Booking].self, forKey: .Bookings)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
