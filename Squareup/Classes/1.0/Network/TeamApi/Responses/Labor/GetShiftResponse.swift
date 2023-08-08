//
//  GetShiftResponse.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

open class GetShiftResponse: SquareupResponse {
    
    /// - shift: The requested Shift.
    var shift: Shift?
    
    enum CodingKeys: String, CodingKey {
        case shift = "shift"
    }
}
