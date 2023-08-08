//
//  UpdateShiftRequest.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

internal class UpdateShiftRequest: Codable {
    
    /// - shift: The updated Shift object.
    var shift: Shift?
    
    enum CodingKeys: String, CodingKey {
        case shift = "shift"
    }
}
