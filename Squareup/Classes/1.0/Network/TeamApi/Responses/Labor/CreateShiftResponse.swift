//
//  CreateShiftResponse.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

open class CreateShiftResponse: SquareupResponse {
    
    /// - shift: The Shift that was created on the request.
    var shift: Shift?
    
    enum CodingKeys: String, CodingKey {
        case shift = "shift"
    }
}
