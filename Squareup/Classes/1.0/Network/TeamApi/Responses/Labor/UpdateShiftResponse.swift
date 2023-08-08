//
//  UpdateShiftResponse.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

open class UpdateShiftResponse: SquareupResponse {
    
    /// - shift: The updated Shift.
    var shift: Shift?
    
    enum CodingKeys: String, CodingKey {
        case shift = "shift"
    }
}
