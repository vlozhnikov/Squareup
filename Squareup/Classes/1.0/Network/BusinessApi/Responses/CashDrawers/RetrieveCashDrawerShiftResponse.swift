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
}
