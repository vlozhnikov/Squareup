//
//  UpdateBreakTypeResponse.swift
//  Squareup
//
//  Created by user on 3.08.23.
//

import Foundation

open class UpdateBreakTypeResponse: SquareupResponse {
    
    /// - breakType: The response object.
    public var breakType: BreakType?
    
    enum CodingKeys: String, CodingKey {
        case breakType = "break_type"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.breakType = try container.decodeIfPresent(BreakType.self, forKey: .breakType)
    }
}
