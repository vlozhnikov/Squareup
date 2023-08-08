//
//  RetrieveLoyaltyProgramResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class RetrieveLoyaltyProgramResponse: SquareupResponse {
    
    /// - Program: The loyalty program that was requested.
    public var Program: LoyaltyProgram?
    
    enum CodingKeys: String, CodingKey {
        case Program = "program"
    }
}
