//
//  RetrieveLoyaltyProgramResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

open class RetrieveLoyaltyProgramResponse: SquareupResponse {
    
    /// - Program: The loyalty program that was requested.
    public var Program: LoyaltyProgram?
    
    enum CodingKeys: String, CodingKey {
        case Program = "program"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Program = try container.decodeIfPresent(LoyaltyProgram.self, forKey: .Program)
    }
}
