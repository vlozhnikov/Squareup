//
//  UpdateShiftResponse.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

open class UpdateShiftResponse: SquareupResponse {
    
    /// - shift: The updated Shift.
    public var shift: Shift?
    
    enum CodingKeys: String, CodingKey {
        case shift = "shift"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.shift = try container.decodeIfPresent(Shift.self, forKey: .shift)
    }
}
