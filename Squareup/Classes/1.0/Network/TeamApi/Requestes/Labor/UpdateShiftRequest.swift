//
//  UpdateShiftRequest.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

open class UpdateShiftRequest: Codable {
    
    /// - shift: The updated Shift object.
    public var shift: Shift?
    
    enum CodingKeys: String, CodingKey {
        case shift = "shift"
    }
}
