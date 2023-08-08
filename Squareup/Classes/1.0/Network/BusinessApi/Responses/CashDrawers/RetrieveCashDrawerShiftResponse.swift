//
//  RetrieveCashDrawerShiftResponse.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

open class RetrieveCashDrawerShiftResponse: SquareupResponse {
    
    /// - cashDrawerShift: The cash drawer shift queried for.
    public var cashDrawerShift: CashDrawerShift?
    
    enum CodingKeys: String, CodingKey {
        case cashDrawerShift = "cash_drawer_shift"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cashDrawerShift = try container.decodeIfPresent(CashDrawerShift.self, forKey: .cashDrawerShift)
    }
}
